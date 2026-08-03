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
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_call_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
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
.Lrkfnzd64:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd64]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx63_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n9_statement_begin_α
.Lx63_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_assign_α
n6_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n9_statement_begin_α
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
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
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
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # S
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_begin_α:
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
                        mov              rdi, qword ptr [rsp + 336]                     # var
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 152], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 160], r13                     # outer_Σ
                        mov              qword ptr [rbp + 168], r14                     # outer_δ
                        mov              qword ptr [rbp + 176], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 184], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 128], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax                     # patstk_mark
                        mov              dword ptr [rbp + 112], 0                       # start_δ
.Lx78_0:
                        mov              r14d, dword ptr [rbp + 112]
                                                                                        jmp   n16_match_sequence_α
n15_match_begin_β:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, r15d
                                                                                        jg    .Lx78_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx78_1
                                                                                        jmp   .Lx78_0
.Lx78_1:
                        mov              rax, qword ptr [rbp + 120]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 128]
                        mov              r10, qword ptr [1879048192]
.Lx78_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx78_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 160]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 168]                     # outer_δ
                        mov              r15, qword ptr [rbp + 176]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 184]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 152]                     # old_rbp
                        add              rsp, 352
                                                                                        jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_match_sequence_α:
                        mov              dword ptr [rbp + 192], r14d
                                                                                        jmp   n28_lit_integer_α
n16_match_sequence_as:
                                                                                        jmp   n17_match_end_α
n16_match_sequence_β:
                                                                                        jmp   n24_match_rpos_β
n16_match_sequence_af:
                                                                                        jmp   n15_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_end_α:
                        mov              rax, qword ptr [rbp + 120]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 128]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx82_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx82_1:
                        test             rax, rax
                                                                                        je    .Lx82_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4]
                                                                                        jmp   rax
.Lx82_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx82_1
.Lx82_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx82_1
.Lx82_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx82_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 160]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 168]                     # outer_δ
                        mov              r15, qword ptr [rbp + 176]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 184]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n18_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:
                        mov              rbp, qword ptr [rbp + 152]                     # old_rbp
                        add              rsp, 352
                                                                                        jmp   n19_statement_begin_α
#=======================================================================================================================
# OK1     OUTPUT = 'even ok'                                     :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_assign_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "even ok"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx88_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n22_statement_end_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rsp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n24_match_rpos_α
n23_lit_integer_β:
                                                                                        jmp   n25_match_arbno_β
.Lx91_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n25_match_arbno_β
                                                                                        jmp   n17_match_end_α
n24_match_rpos_β:
                                                                                        jmp   n25_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_arbno_α:
                        mov              dword ptr [rbp + 240], r14d
                        mov              dword ptr [rbp + 244], r14d
                        mov              dword ptr [rbp + 248], 0
                        mov              qword ptr [rbp + 264], rsp
                        mov              qword ptr [rbp + 256], 0
                                                                                        jmp   n23_lit_integer_α
n25_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 244]
                        mov              rax, qword ptr [rbp + 256]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 256], rsp
                        mov              rbp, rsp
                        add              rbp, -248
                                                                                        jmp   n27_match_defer_α
n25_match_arbno_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              r14d, eax
                                                                                        je    n27_match_defer_β
                        mov              rbp, qword ptr [rbp + 248]
                        mov              eax, dword ptr [rbp + 248]
                        add              eax, 1
                        mov              dword ptr [rbp + 248], eax
                        mov              dword ptr [rbp + 244], r14d
                                                                                        jmp   n23_lit_integer_α
n25_match_arbno_af:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 328]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 248]
                        test             ecx, ecx
                                                                                        jz    .Lx94_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 248], ecx
                        mov              qword ptr [rbp + 256], rax
                        lea              rbp, [rax + -248]
                                                                                        jmp   n27_match_defer_β
.Lx94_2:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   n29_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rsp + 304], 2                       # result
                        mov              dword ptr [rsp + 308], 5
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   main_γ
n26_lit_string_β:
                                                                                        jmp   main_ω
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n27_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx96_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx96_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx96_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx96_10
.Lx96_9:
                        xor              eax, eax
.Lx96_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx96_11:
                        test             rax, rax
                                                                                        jz    .Lx96_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx96_4]
                        lea              rdx, [rip + .Lx96_5]
                                                                                        jmp   rax
.Lx96_4:
                                                                                        jmp   n25_match_arbno_as
.Lx96_5:
                                                                                        jmp   n25_match_arbno_af
.Lx96_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx96_2:
                        test             rax, rax
                                                                                        je    .Lx96_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx96_7]
                        lea              rdx, [rip + .Lx96_8]
                                                                                        jmp   rax
.Lx96_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx96_2
.Lx96_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx96_2
.Lx96_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n25_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx96_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n25_match_arbno_as
.Lx96_6:
                        add              rsp, 16
                                                                                        jmp   n25_match_arbno_af
n27_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n29_match_pos_α
n28_lit_integer_β:
                                                                                        jmp   n15_match_begin_β
.Lx97_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n15_match_begin_β
                                                                                        jmp   n25_match_arbno_α
n29_match_pos_β:
                                                                                        jmp   n15_match_begin_β
#=======================================================================================================================
# BAD1    OUTPUT = 'even FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_assign_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "even FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx102_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n33_statement_end_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n34_statement_begin_α
#=======================================================================================================================
# T2      'abcde' POS(0) ARBNO(*P) RPOS(0)                      :S(BAD2)F(OK2)
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_match_begin_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n36_match_begin_α:
                        sub              rsp, 624
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
                        mov              rdi, qword ptr [rsp + 624]                     # lit_string
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 440], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 448], r13                     # outer_Σ
                        mov              qword ptr [rbp + 456], r14                     # outer_δ
                        mov              qword ptr [rbp + 464], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 472], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 416], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 408], rax                     # patstk_mark
                        mov              dword ptr [rbp + 400], 0                       # start_δ
.Lx109_0:
                        mov              r14d, dword ptr [rbp + 400]
                                                                                        jmp   n37_match_sequence_α
n36_match_begin_β:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, r15d
                                                                                        jg    .Lx109_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx109_1
                                                                                        jmp   .Lx109_0
.Lx109_1:
                        mov              rax, qword ptr [rbp + 408]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 416]
                        mov              r10, qword ptr [1879048192]
.Lx109_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx109_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 448]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 456]                     # outer_δ
                        mov              r15, qword ptr [rbp + 464]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 472]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 440]                     # old_rbp
                        add              rsp, 640
                                                                                        jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_match_sequence_α:
                        mov              dword ptr [rbp + 480], r14d
                                                                                        jmp   n49_lit_integer_α
n37_match_sequence_as:
                                                                                        jmp   n38_match_end_α
n37_match_sequence_β:
                                                                                        jmp   n45_match_rpos_β
n37_match_sequence_af:
                                                                                        jmp   n36_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_end_α:
                        mov              rax, qword ptr [rbp + 408]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 416]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
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
                        mov              r10, qword ptr [1879048192]
.Lx113_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx113_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 448]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 456]                     # outer_δ
                        mov              r15, qword ptr [rbp + 464]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 472]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:
                        mov              rbp, qword ptr [rbp + 440]                     # old_rbp
                        add              rsp, 640
                                                                                        jmp   n40_statement_begin_α
#=======================================================================================================================
# BAD2    OUTPUT = 'odd FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "odd FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx119_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n43_statement_end_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n45_match_rpos_α
n44_lit_integer_β:
                                                                                        jmp   n46_match_arbno_β
.Lx122_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n45_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n46_match_arbno_β
                                                                                        jmp   n38_match_end_α
n45_match_rpos_β:
                                                                                        jmp   n46_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_arbno_α:
                        mov              dword ptr [rbp + 528], r14d
                        mov              dword ptr [rbp + 532], r14d
                        mov              dword ptr [rbp + 536], 0
                        mov              qword ptr [rbp + 552], rsp
                        mov              qword ptr [rbp + 544], 0
                                                                                        jmp   n44_lit_integer_α
n46_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 532]
                        mov              rax, qword ptr [rbp + 544]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 544], rsp
                        mov              rbp, rsp
                        add              rbp, -536
                                                                                        jmp   n48_match_defer_α
n46_match_arbno_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              r14d, eax
                                                                                        je    n48_match_defer_β
                        mov              rbp, qword ptr [rbp + 536]
                        mov              eax, dword ptr [rbp + 536]
                        add              eax, 1
                        mov              dword ptr [rbp + 536], eax
                        mov              dword ptr [rbp + 532], r14d
                                                                                        jmp   n44_lit_integer_α
n46_match_arbno_af:
                        mov              rax, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              rsp, [rbp + 616]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 536]
                        test             ecx, ecx
                                                                                        jz    .Lx125_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 536], ecx
                        mov              qword ptr [rbp + 544], rax
                        lea              rbp, [rax + -536]
                                                                                        jmp   n48_match_defer_β
.Lx125_2:
                        mov              r14d, dword ptr [rbp + 528]
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   n50_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rsp + 592], 2                       # result
                        mov              dword ptr [rsp + 596], 5
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   main_γ
n47_lit_string_β:
                                                                                        jmp   main_ω
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n48_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx127_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx127_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx127_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx127_10
.Lx127_9:
                        xor              eax, eax
.Lx127_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx127_11:
                        test             rax, rax
                                                                                        jz    .Lx127_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx127_4]
                        lea              rdx, [rip + .Lx127_5]
                                                                                        jmp   rax
.Lx127_4:
                                                                                        jmp   n46_match_arbno_as
.Lx127_5:
                                                                                        jmp   n46_match_arbno_af
.Lx127_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx127_2:
                        test             rax, rax
                                                                                        je    .Lx127_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx127_7]
                        lea              rdx, [rip + .Lx127_8]
                                                                                        jmp   rax
.Lx127_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx127_2
.Lx127_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx127_2
.Lx127_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n46_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx127_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n46_match_arbno_as
.Lx127_6:
                        add              rsp, 16
                                                                                        jmp   n46_match_arbno_af
n48_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n50_match_pos_α
n49_lit_integer_β:
                                                                                        jmp   n36_match_begin_β
.Lx128_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n36_match_begin_β
                                                                                        jmp   n46_match_arbno_α
n50_match_pos_β:
                                                                                        jmp   n36_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_goto_α:
                                                                                        jmp   n19_statement_begin_α
n51_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n30_statement_begin_α
n52_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:
                                                                                        jmp   n34_statement_begin_α
n53_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:
                                                                                        jmp   n55_statement_begin_α
n54_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# OK2     OUTPUT = 'odd rejected ok'                             :(END)
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_assign_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "odd rejected ok"
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx137_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n58_statement_end_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n59_goto_α:
                                                                                        jmp   n40_statement_begin_α
n59_goto_β:
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
