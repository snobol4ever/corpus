                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + proc_PAT$0_ω]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n2_match_lit_α
.Lx4_21:
                        lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n1_match_lit_α
n0_match_alternate_s0:
                        lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s1:
                        lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
.Lx4_40:
                                                                                        jmp   n2_match_lit_β
.Lx4_41:
                                                                                        jmp   n1_match_lit_β
n0_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n0_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx4_19:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n0_match_alternate_s1
n1_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n0_match_alternate_s0
n2_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n0_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx9_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx9_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx10_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx10_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx10_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx10_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n11_match_arbno_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_arbno_α:
                        mov              dword ptr [rbp + 32], r14d
                        mov              dword ptr [rbp + 36], r14d
                        mov              dword ptr [rbp + 40], 0
                        mov              qword ptr [rbp + 56], rsp
                        mov              qword ptr [rbp + 48], 0
                                                                                        jmp   proc_PAT$1_γ
n11_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 36]
                        mov              rax, qword ptr [rbp + 48]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 48], rsp
                        mov              rbp, rsp
                        add              rbp, -40
                                                                                        jmp   n12_match_defer_α
n11_match_arbno_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              r14d, eax
                                                                                        je    n12_match_defer_β
                        mov              rbp, qword ptr [rbp + 40]
                        mov              eax, dword ptr [rbp + 40]
                        add              eax, 1
                        mov              dword ptr [rbp + 40], eax
                        mov              dword ptr [rbp + 36], r14d
                                                                                        jmp   proc_PAT$1_γ
n11_match_arbno_af:
                        mov              rax, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 40]
                        lea              rsp, [rbp + 104]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 40]
                        test             ecx, ecx
                                                                                        jz    .Lx14_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 40], ecx
                        mov              qword ptr [rbp + 48], rax
                        lea              rbp, [rax + -40]
                                                                                        jmp   n12_match_defer_β
.Lx14_2:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rsp, qword ptr [rbp + 56]
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052288]                    # cmd
                        mov              rdx, qword ptr [1879052296]
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
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n11_match_arbno_as
.Lx15_5:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n11_match_arbno_af
.Lx15_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
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
                                                                                        js    n11_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx15_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n11_match_arbno_as
.Lx15_6:
                        add              rsp, 16
                                                                                        jmp   n11_match_arbno_af
n12_match_defer_β:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n11_match_arbno_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx16_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx16_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx17_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx17_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx17_0
                        mov              dword ptr [rbp + 120], eax
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
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
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
                        mov              esi, 80
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
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "cmd"
.Lgvan1:                .string          "outer"
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
#         cmd   = FENCE('a' | 'ab')
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_call_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
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
.Lrkfnzd49:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd49]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx48_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n22_lit_string_α
.Lx48_240:
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
                        mov              qword ptr [1879052288], rax                    # cmd
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n21_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_α:
                        add              rsp, 32
                                                                                        jmp   n22_lit_string_α
#=======================================================================================================================
#         outer = ARBNO(*cmd)
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_call_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
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
.Lrkfnzd55:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd55]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx54_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx54_240:
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
                        mov              qword ptr [1879052304], rax                    # outer
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n25_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_α:
                        add              rsp, 32
                                                                                        jmp   n26_lit_string_α
#=======================================================================================================================
#         s = 'aab'
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "aab"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # s
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n28_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_α:
                        add              rsp, 16
                                                                                        jmp   n29_var_α
#=======================================================================================================================
#         s POS(0) *outer RPOS(0)                               :S(BAD)F(GOOD)
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
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
                                                                                        jmp   n30_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_begin_α:
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
.Lx65_0:
                        mov              r14d, dword ptr [rbp + 176]
                                                                                        jmp   n31_match_sequence_α
n30_match_begin_β:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, r15d
                                                                                        jg    .Lx65_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx65_1
                                                                                        jmp   .Lx65_0
.Lx65_1:
                        mov              rax, qword ptr [rbp + 184]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 192]
                        mov              r10, qword ptr [1879048192]
.Lx65_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_2
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
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_match_sequence_α:
                        mov              dword ptr [rbp + 256], r14d
                                                                                        jmp   n40_lit_integer_α
n31_match_sequence_as:
                                                                                        jmp   n32_match_end_α
n31_match_sequence_β:
                                                                                        jmp   n38_match_rpos_β
n31_match_sequence_af:
                                                                                        jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_end_α:
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
.Lx69_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx69_1:
                        test             rax, rax
                                                                                        je    .Lx69_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4]
                                                                                        jmp   rax
.Lx69_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx69_1
.Lx69_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx69_1
.Lx69_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx69_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 232]                     # outer_δ
                        mov              r15, qword ptr [rbp + 240]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 248]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n33_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_α:
                        mov              rbp, qword ptr [rbp + 216]                     # old_rbp
                        add              rsp, 336
                                                                                        jmp   n34_lit_string_α
#=======================================================================================================================
# BAD     OUTPUT = 'unexpected match'                           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_assign_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "unexpected match"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx73_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n36_statement_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rsp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n38_match_rpos_α
n37_lit_integer_β:
                                                                                        jmp   n39_match_defer_β
.Lx76_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n39_match_defer_β
                                                                                        jmp   n32_match_end_α
n38_match_rpos_β:
                                                                                        jmp   n39_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx78_11
                        mov              rax, qword ptr [1879052304]                    # outer
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx78_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx78_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx78_10
.Lx78_9:
                        xor              eax, eax
.Lx78_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx78_11:
                        test             rax, rax
                                                                                        jz    .Lx78_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx78_4]
                        lea              rdx, [rip + .Lx78_5]
                                                                                        jmp   rax
.Lx78_4:
                                                                                        jmp   n37_lit_integer_α
.Lx78_5:
                                                                                        jmp   n30_match_begin_β
.Lx78_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx78_2:
                        test             rax, rax
                                                                                        je    .Lx78_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx78_7]
                        lea              rdx, [rip + .Lx78_8]
                                                                                        jmp   rax
.Lx78_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx78_2
.Lx78_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx78_2
.Lx78_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n30_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx78_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n37_lit_integer_α
.Lx78_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_begin_β
n39_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rsp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n41_match_pos_α
n40_lit_integer_β:
                                                                                        jmp   n30_match_begin_β
.Lx79_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n41_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n30_match_begin_β
                                                                                        jmp   n39_match_defer_α
n41_match_pos_β:
                                                                                        jmp   n30_match_begin_β
#=======================================================================================================================
# GOOD    OUTPUT = 'beauty-class FENCE seal held'
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "beauty-class FENCE seal held"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx82_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n44_statement_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:
                                                                                        jmp   n34_lit_string_α
n45_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n42_lit_string_α
n46_goto_β:
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
.S0:                    .string          "cmd"
.S1:                    .string          "outer"
                        .text
                        .section         .note.GNU-stack,"",@progbits
