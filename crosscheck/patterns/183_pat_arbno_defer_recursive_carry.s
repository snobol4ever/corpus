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
                        lea              rax, [rip + n0_match_alternate_β]
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
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n0_match_alternate_s1
n1_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                                                                                        jmp   n0_match_alternate_s0
n2_match_lit_β:
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
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + proc_PAT$1_ω]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:
                        sub              rsp, 112
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
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx17_239
                        add              rsp, 112
                                                                                        jmp   proc_PAT$1_scanfail
.Lx17_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60
                                                                                        je    .Lx17_240
                        add              rsp, 112
                                                                                        jmp   proc_PAT$1_scanfail
.Lx17_240:
                        add              r14d, 1
                                                                                        jmp   n12_match_span_α
n11_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 112
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n12_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx19_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_10
                        cmp              esi, 98
                                                                                        je    .Lx19_10
                                                                                        jmp   .Lx19_1
.Lx19_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_11
                        cmp              esi, 98
                                                                                        je    .Lx19_11
                                                                                        jmp   .Lx19_1
.Lx19_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_12
                        cmp              esi, 98
                                                                                        je    .Lx19_12
                                                                                        jmp   .Lx19_1
.Lx19_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx19_13
                        cmp              esi, 98
                                                                                        je    .Lx19_13
                                                                                        jmp   .Lx19_1
.Lx19_13:
                        add              ecx, 1
                                                                                        jmp   .Lx19_0
.Lx19_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx19_240
                        add              rsp, 16
                                                                                        jmp   n11_match_lit_β
.Lx19_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n13_match_arbno_α
n12_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n11_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_arbno_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], r14d
                        mov              dword ptr [rbp + 56], 0
                        mov              qword ptr [rbp + 72], rsp
                        mov              qword ptr [rbp + 80], rbp
                        mov              qword ptr [rbp + 64], 0
                                                                                        jmp   n14_match_lit_α
n13_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 52]
                        mov              rax, qword ptr [rbp + 64]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 64], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n15_match_defer_α
n13_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n15_match_defer_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 56]
                        add              eax, 1
                        mov              dword ptr [rbp + 56], eax
                        mov              dword ptr [rbp + 52], r14d
                                                                                        jmp   n14_match_lit_α
n13_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 136]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 56]
                        test             ecx, ecx
                                                                                        jz    .Lx21_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 56], ecx
                        mov              qword ptr [rbp + 64], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n15_match_defer_β
.Lx21_2:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   n12_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n13_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62
                                                                                        jne   n13_match_arbno_β
                        add              r14d, 1
                        add              rsp, 112
                                                                                        jmp   proc_PAT$1_scanhit
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx24_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx24_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx24_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx24_10
.Lx24_9:
                        xor              eax, eax
.Lx24_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx24_11:
                        test             rax, rax
                                                                                        jz    .Lx24_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx24_4]
                        lea              rdx, [rip + .Lx24_5]
                                                                                        jmp   rax
.Lx24_4:
                                                                                        jmp   n13_match_arbno_as
.Lx24_5:
                                                                                        jmp   n13_match_arbno_af
.Lx24_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx24_2:
                        test             rax, rax
                                                                                        je    .Lx24_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx24_7]
                        lea              rdx, [rip + .Lx24_8]
                                                                                        jmp   rax
.Lx24_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx24_2
.Lx24_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx24_2
.Lx24_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n13_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx24_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n13_match_arbno_as
.Lx24_6:
                        add              rsp, 16
                                                                                        jmp   n13_match_arbno_af
n15_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx25_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx25_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx26_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx26_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx26_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx26_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, qword ptr [rbp + 184]
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
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "G"
.Lgvan1:                .string          "W"
.Lgvan2:                .string          "E"
.Lgvan3:                .string          "S1"
.Lgvan4:                .string          "S2"
.Lgvan5:                .string          "S3"
.Lgvan6:                .string          "S4"
.Lgvan7:                .string          "S5"
.Lgvan8:                .string          "S6"
.Lgvan9:                .string          "S7"
.Lgvan10:               .string          "S8"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 11
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 11
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
#         G = "<" SPAN("ab") ARBNO(*G) ">"
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:
                                                                                        jmp   n28_lit_string_α
n27_statement_begin_β:
                                                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_call_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
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
.Lrkfnzd259:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd259]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx258_240
                                                                                        jmp   n31_statement_end_α
.Lx258_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_assign_α
n29_call_β:
                                                                                        jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # G
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n32_statement_begin_α
#=======================================================================================================================
#         W = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:
                                                                                        jmp   n33_lit_string_α
n32_statement_begin_β:
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # W
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_α
#=======================================================================================================================
#         E = "" | "c"
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_lit_string_α
n36_statement_begin_β:
                                                                                        jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_call_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd273:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd273]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx272_240
                                                                                        jmp   n40_statement_end_α
.Lx272_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_assign_α
n38_call_β:
                                                                                        jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # E
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n41_statement_begin_α
#=======================================================================================================================
#         S1 = "<ab>"
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:
                                                                                        jmp   n42_lit_string_α
n41_statement_begin_β:
                                                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "<ab>"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # S1
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n45_statement_begin_α
#=======================================================================================================================
#         S2 = "<ab<a><b>>"
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:
                                                                                        jmp   n46_lit_string_α
n45_statement_begin_β:
                                                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_assign_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "<ab<a><b>>"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # S2
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n49_statement_begin_α
#=======================================================================================================================
#         S3 = "<a<b<a<b<a<b<a<b<a<b<a<b>>>>>>>>>>>>"
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:
                                                                                        jmp   n50_lit_string_α
n49_statement_begin_β:
                                                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_assign_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "<a<b<a<b<a<b<a<b<a<b<a<b>>>>>>>>>>>>"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # S3
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n53_statement_begin_α
#=======================================================================================================================
#         S4 = "<ab<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:
                                                                                        jmp   n54_lit_string_α
n53_statement_begin_β:
                                                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "<ab<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # S4
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n57_statement_begin_α
#=======================================================================================================================
#         S5 = "abab"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:
                                                                                        jmp   n58_lit_string_α
n57_statement_begin_β:
                                                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_assign_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "abab"
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # S5
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n61_statement_begin_α
#=======================================================================================================================
#         S6 = "ccc"
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:
                                                                                        jmp   n62_lit_string_α
n61_statement_begin_β:
                                                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_assign_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "ccc"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # S6
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n65_statement_begin_α
#=======================================================================================================================
#         S7 = "<a<b>><ab>"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_lit_string_α
n65_statement_begin_β:
                                                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_assign_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "<a<b>><ab>"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # S7
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_α
#=======================================================================================================================
#         S8 = "<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:
                                                                                        jmp   n70_lit_string_α
n69_statement_begin_β:
                                                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_assign_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S8
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n73_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*G) RPOS(0)              :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:
                                                                                        jmp   n74_var_α
n73_statement_begin_β:
                                                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        sub              rsp, 528
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # S1
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 352], r13                     # outer_Σ
                        mov              qword ptr [rbp + 360], r14                     # outer_δ
                        mov              qword ptr [rbp + 368], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax                     # cap_gen
                        mov              qword ptr [rbp + 344], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 320], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 304], 0                       # start_δ
.Lx329_0:
                        mov              r14d, dword ptr [rbp + 304]
                                                                                        jmp   n76_lit_integer_α
n75_match_begin_β:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, r15d
                                                                                        jg    .Lx329_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx329_1
                                                                                        jmp   .Lx329_0
.Lx329_1:
n75_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 320]
                        mov              r13, qword ptr [rbp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 360]                     # outer_δ
                        mov              r15, qword ptr [rbp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]                     # old_rbp
                        add              rsp, 528
                                                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n77_match_pos_α
.Lx330_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n77_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n75_match_begin_β
                                                                                        jmp   n78_match_arbno_α
n77_match_pos_β:
                                                                                        jmp   n75_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n78_match_arbno_α:
                        mov              dword ptr [rbp + 416], r14d
                        mov              dword ptr [rbp + 420], r14d
                        mov              dword ptr [rbp + 424], 0
                        mov              qword ptr [rbp + 440], rsp
                        mov              qword ptr [rbp + 448], rbp
                        mov              qword ptr [rbp + 432], 0
                                                                                        jmp   n79_lit_integer_α
n78_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 420]
                        mov              rax, qword ptr [rbp + 432]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 432], rsp
                        mov              rbp, rsp
                        add              rbp, -440
                                                                                        jmp   n87_match_defer_α
n78_match_arbno_as:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              r14d, eax
                                                                                        je    n87_match_defer_β
                        mov              rbp, qword ptr [rbp + 440]
                        mov              eax, dword ptr [rbp + 424]
                        add              eax, 1
                        mov              dword ptr [rbp + 424], eax
                        mov              dword ptr [rbp + 420], r14d
                                                                                        jmp   n79_lit_integer_α
n78_match_arbno_af:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              rsp, [rbp + 504]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 424]
                        test             ecx, ecx
                                                                                        jz    .Lx333_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 424], ecx
                        mov              qword ptr [rbp + 432], rax
                        lea              rbp, [rax + -440]
                                                                                        jmp   n87_match_defer_β
.Lx333_2:
                        mov              r14d, dword ptr [rbp + 416]
                        mov              rbp, qword ptr [rbp + 448]
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   n77_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n80_match_rpos_α
.Lx334_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n80_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n78_match_arbno_β
                                                                                        jmp   n81_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_match_end_α:
                        mov              r10, r12
.Lx337_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx337_9
                        mov              rsp, qword ptr [rbp + 320]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx337_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx337_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx337_1:
                        test             rax, rax
                                                                                        je    .Lx337_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx337_3]
                        lea              rdx, [rip + .Lx337_4]
                                                                                        jmp   rax
.Lx337_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx337_1
.Lx337_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx337_1
.Lx337_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 360]                     # outer_δ
                        mov              r15, qword ptr [rbp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]                     # old_rbp
                                                                                        jmp   n82_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:
                        add              rsp, 528
                                                                                        jmp   n83_statement_begin_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"                      :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:
                                                                                        jmp   n84_lit_string_α
n83_statement_begin_β:
                                                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n85_assign_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx343_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n86_statement_end_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx346_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx346_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx346_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx346_10
.Lx346_9:
                        xor              eax, eax
.Lx346_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx346_11:
                        test             rax, rax
                                                                                        jz    .Lx346_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx346_4]
                        lea              rdx, [rip + .Lx346_5]
                                                                                        jmp   rax
.Lx346_4:
                                                                                        jmp   n78_match_arbno_as
.Lx346_5:
                                                                                        jmp   n78_match_arbno_af
.Lx346_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx346_2:
                        test             rax, rax
                                                                                        je    .Lx346_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx346_7]
                        lea              rdx, [rip + .Lx346_8]
                                                                                        jmp   rax
.Lx346_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx346_2
.Lx346_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx346_2
.Lx346_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n78_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx346_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n78_match_arbno_as
.Lx346_6:
                        add              rsp, 16
                                                                                        jmp   n78_match_arbno_af
n87_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:
                                                                                        jmp   n89_lit_string_α
n88_statement_begin_β:
                                                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_assign_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx350_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n91_statement_end_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n92_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*G) RPOS(0)              :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:
                                                                                        jmp   n93_var_α
n92_statement_begin_β:
                                                                                        jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        sub              rsp, 800
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
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S2
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 624], r13                     # outer_Σ
                        mov              qword ptr [rbp + 632], r14                     # outer_δ
                        mov              qword ptr [rbp + 640], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 648], rax                     # cap_gen
                        mov              qword ptr [rbp + 616], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 592], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 576], 0                       # start_δ
.Lx357_0:
                        mov              r14d, dword ptr [rbp + 576]
                                                                                        jmp   n95_lit_integer_α
n94_match_begin_β:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, r15d
                                                                                        jg    .Lx357_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx357_1
                                                                                        jmp   .Lx357_0
.Lx357_1:
n94_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 592]
                        mov              r13, qword ptr [rbp + 624]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 632]                     # outer_δ
                        mov              r15, qword ptr [rbp + 640]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 648]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 616]                     # old_rbp
                        add              rsp, 800
                                                                                        jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rsp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n96_match_pos_α
.Lx358_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n94_match_begin_β
                                                                                        jmp   n97_match_arbno_α
n96_match_pos_β:
                                                                                        jmp   n94_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_arbno_α:
                        mov              dword ptr [rbp + 688], r14d
                        mov              dword ptr [rbp + 692], r14d
                        mov              dword ptr [rbp + 696], 0
                        mov              qword ptr [rbp + 712], rsp
                        mov              qword ptr [rbp + 720], rbp
                        mov              qword ptr [rbp + 704], 0
                                                                                        jmp   n98_lit_integer_α
n97_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 692]
                        mov              rax, qword ptr [rbp + 704]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 704], rsp
                        mov              rbp, rsp
                        add              rbp, -712
                                                                                        jmp   n106_match_defer_α
n97_match_arbno_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              r14d, eax
                                                                                        je    n106_match_defer_β
                        mov              rbp, qword ptr [rbp + 712]
                        mov              eax, dword ptr [rbp + 696]
                        add              eax, 1
                        mov              dword ptr [rbp + 696], eax
                        mov              dword ptr [rbp + 692], r14d
                                                                                        jmp   n98_lit_integer_α
n97_match_arbno_af:
                        mov              rax, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              rsp, [rbp + 776]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 696]
                        test             ecx, ecx
                                                                                        jz    .Lx361_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 696], ecx
                        mov              qword ptr [rbp + 704], rax
                        lea              rbp, [rax + -712]
                                                                                        jmp   n106_match_defer_β
.Lx361_2:
                        mov              r14d, dword ptr [rbp + 688]
                        mov              rbp, qword ptr [rbp + 720]
                        mov              rsp, qword ptr [rbp + 712]
                                                                                        jmp   n96_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 768], 3                       # result
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n99_match_rpos_α
.Lx362_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n99_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n97_match_arbno_β
                                                                                        jmp   n100_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_match_end_α:
                        mov              r10, r12
.Lx365_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx365_9
                        mov              rsp, qword ptr [rbp + 592]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx365_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx365_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx365_1:
                        test             rax, rax
                                                                                        je    .Lx365_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx365_3]
                        lea              rdx, [rip + .Lx365_4]
                                                                                        jmp   rax
.Lx365_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx365_1
.Lx365_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx365_1
.Lx365_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 624]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 632]                     # outer_δ
                        mov              r15, qword ptr [rbp + 640]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 648]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 616]                     # old_rbp
                                                                                        jmp   n101_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:
                        add              rsp, 800
                                                                                        jmp   n102_statement_begin_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"                      :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:
                                                                                        jmp   n103_lit_string_α
n102_statement_begin_β:
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n104_assign_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx371_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n105_statement_end_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx374_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx374_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx374_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx374_10
.Lx374_9:
                        xor              eax, eax
.Lx374_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx374_11:
                        test             rax, rax
                                                                                        jz    .Lx374_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx374_4]
                        lea              rdx, [rip + .Lx374_5]
                                                                                        jmp   rax
.Lx374_4:
                                                                                        jmp   n97_match_arbno_as
.Lx374_5:
                                                                                        jmp   n97_match_arbno_af
.Lx374_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx374_2:
                        test             rax, rax
                                                                                        je    .Lx374_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx374_7]
                        lea              rdx, [rip + .Lx374_8]
                                                                                        jmp   rax
.Lx374_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx374_2
.Lx374_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx374_2
.Lx374_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n97_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx374_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n97_match_arbno_as
.Lx374_6:
                        add              rsp, 16
                                                                                        jmp   n97_match_arbno_af
n106_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:
                                                                                        jmp   n108_lit_string_α
n107_statement_begin_β:
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx378_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n110_statement_end_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n111_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*G) RPOS(0)              :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_var_α
n111_statement_begin_β:
                                                                                        jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 1072
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
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # S3
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
                        mov              qword ptr [rbp + 888], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 864], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 848], 0                       # start_δ
.Lx385_0:
                        mov              r14d, dword ptr [rbp + 848]
                                                                                        jmp   n114_lit_integer_α
n113_match_begin_β:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, r15d
                                                                                        jg    .Lx385_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx385_1
                                                                                        jmp   .Lx385_0
.Lx385_1:
n113_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 864]
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                        add              rsp, 1072
                                                                                        jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rsp + 928], 3                       # result
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n115_match_pos_α
.Lx386_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n113_match_begin_β
                                                                                        jmp   n116_match_arbno_α
n115_match_pos_β:
                                                                                        jmp   n113_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n116_match_arbno_α:
                        mov              dword ptr [rbp + 960], r14d
                        mov              dword ptr [rbp + 964], r14d
                        mov              dword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 984], rsp
                        mov              qword ptr [rbp + 992], rbp
                        mov              qword ptr [rbp + 976], 0
                                                                                        jmp   n117_lit_integer_α
n116_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 964]
                        mov              rax, qword ptr [rbp + 976]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 976], rsp
                        mov              rbp, rsp
                        add              rbp, -984
                                                                                        jmp   n125_match_defer_α
n116_match_arbno_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              r14d, eax
                                                                                        je    n125_match_defer_β
                        mov              rbp, qword ptr [rbp + 984]
                        mov              eax, dword ptr [rbp + 968]
                        add              eax, 1
                        mov              dword ptr [rbp + 968], eax
                        mov              dword ptr [rbp + 964], r14d
                                                                                        jmp   n117_lit_integer_α
n116_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              rsp, [rbp + 1048]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 968]
                        test             ecx, ecx
                                                                                        jz    .Lx389_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 968], ecx
                        mov              qword ptr [rbp + 976], rax
                        lea              rbp, [rax + -984]
                                                                                        jmp   n125_match_defer_β
.Lx389_2:
                        mov              r14d, dword ptr [rbp + 960]
                        mov              rbp, qword ptr [rbp + 992]
                        mov              rsp, qword ptr [rbp + 984]
                                                                                        jmp   n115_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rsp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n118_match_rpos_α
.Lx390_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n118_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n116_match_arbno_β
                                                                                        jmp   n119_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n119_match_end_α:
                        mov              r10, r12
.Lx393_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx393_9
                        mov              rsp, qword ptr [rbp + 864]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx393_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx393_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx393_1:
                        test             rax, rax
                                                                                        je    .Lx393_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx393_3]
                        lea              rdx, [rip + .Lx393_4]
                                                                                        jmp   rax
.Lx393_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx393_1
.Lx393_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx393_1
.Lx393_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]                     # old_rbp
                                                                                        jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:
                        add              rsp, 1072
                                                                                        jmp   n121_statement_begin_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"                      :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:
                                                                                        jmp   n122_lit_string_α
n121_statement_begin_β:
                                                                                        jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_assign_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx399_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n124_statement_end_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n125_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx402_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx402_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx402_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx402_10
.Lx402_9:
                        xor              eax, eax
.Lx402_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx402_11:
                        test             rax, rax
                                                                                        jz    .Lx402_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx402_4]
                        lea              rdx, [rip + .Lx402_5]
                                                                                        jmp   rax
.Lx402_4:
                                                                                        jmp   n116_match_arbno_as
.Lx402_5:
                                                                                        jmp   n116_match_arbno_af
.Lx402_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx402_2:
                        test             rax, rax
                                                                                        je    .Lx402_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx402_7]
                        lea              rdx, [rip + .Lx402_8]
                                                                                        jmp   rax
.Lx402_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx402_2
.Lx402_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx402_2
.Lx402_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n116_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx402_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n116_match_arbno_as
.Lx402_6:
                        add              rsp, 16
                                                                                        jmp   n116_match_arbno_af
n125_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α:
                                                                                        jmp   n127_lit_string_α
n126_statement_begin_β:
                                                                                        jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n128_assign_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx406_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n129_statement_end_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n130_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*G) RPOS(0)              :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α:
                                                                                        jmp   n131_var_α
n130_statement_begin_β:
                                                                                        jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        sub              rsp, 1344
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
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # S4
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n132_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1168], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1176], r14                    # outer_δ
                        mov              qword ptr [rbp + 1184], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1192], rax                    # cap_gen
                        mov              qword ptr [rbp + 1160], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1136], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1120], 0                      # start_δ
.Lx413_0:
                        mov              r14d, dword ptr [rbp + 1120]
                                                                                        jmp   n133_lit_integer_α
n132_match_begin_β:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, r15d
                                                                                        jg    .Lx413_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx413_1
                                                                                        jmp   .Lx413_0
.Lx413_1:
n132_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1136]
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]                    # old_rbp
                        add              rsp, 1344
                                                                                        jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rsp + 1200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n134_match_pos_α
.Lx414_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n134_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n132_match_begin_β
                                                                                        jmp   n135_match_arbno_α
n134_match_pos_β:
                                                                                        jmp   n132_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_match_arbno_α:
                        mov              dword ptr [rbp + 1232], r14d
                        mov              dword ptr [rbp + 1236], r14d
                        mov              dword ptr [rbp + 1240], 0
                        mov              qword ptr [rbp + 1256], rsp
                        mov              qword ptr [rbp + 1264], rbp
                        mov              qword ptr [rbp + 1248], 0
                                                                                        jmp   n136_lit_integer_α
n135_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1236]
                        mov              rax, qword ptr [rbp + 1248]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1248], rsp
                        mov              rbp, rsp
                        add              rbp, -1256
                                                                                        jmp   n144_match_defer_α
n135_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              r14d, eax
                                                                                        je    n144_match_defer_β
                        mov              rbp, qword ptr [rbp + 1256]
                        mov              eax, dword ptr [rbp + 1240]
                        add              eax, 1
                        mov              dword ptr [rbp + 1240], eax
                        mov              dword ptr [rbp + 1236], r14d
                                                                                        jmp   n136_lit_integer_α
n135_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              rsp, [rbp + 1320]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1240]
                        test             ecx, ecx
                                                                                        jz    .Lx417_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1240], ecx
                        mov              qword ptr [rbp + 1248], rax
                        lea              rbp, [rax + -1256]
                                                                                        jmp   n144_match_defer_β
.Lx417_2:
                        mov              r14d, dword ptr [rbp + 1232]
                        mov              rbp, qword ptr [rbp + 1264]
                        mov              rsp, qword ptr [rbp + 1256]
                                                                                        jmp   n134_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rsp + 1312], 3                      # result
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1320], rax
                                                                                        jmp   n137_match_rpos_α
.Lx418_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n137_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n135_match_arbno_β
                                                                                        jmp   n138_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_match_end_α:
                        mov              r10, r12
.Lx421_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx421_9
                        mov              rsp, qword ptr [rbp + 1136]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx421_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx421_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx421_1:
                        test             rax, rax
                                                                                        je    .Lx421_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx421_3]
                        lea              rdx, [rip + .Lx421_4]
                                                                                        jmp   rax
.Lx421_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx421_1
.Lx421_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx421_1
.Lx421_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]                    # old_rbp
                                                                                        jmp   n139_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:
                        add              rsp, 1344
                                                                                        jmp   n140_statement_begin_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"                      :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α:
                                                                                        jmp   n141_lit_string_α
n140_statement_begin_β:
                                                                                        jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n142_assign_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx427_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n143_statement_end_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx430_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx430_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx430_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx430_10
.Lx430_9:
                        xor              eax, eax
.Lx430_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx430_11:
                        test             rax, rax
                                                                                        jz    .Lx430_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx430_4]
                        lea              rdx, [rip + .Lx430_5]
                                                                                        jmp   rax
.Lx430_4:
                                                                                        jmp   n135_match_arbno_as
.Lx430_5:
                                                                                        jmp   n135_match_arbno_af
.Lx430_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx430_2:
                        test             rax, rax
                                                                                        je    .Lx430_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx430_7]
                        lea              rdx, [rip + .Lx430_8]
                                                                                        jmp   rax
.Lx430_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx430_2
.Lx430_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx430_2
.Lx430_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n135_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx430_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n135_match_arbno_as
.Lx430_6:
                        add              rsp, 16
                                                                                        jmp   n135_match_arbno_af
n144_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α:
                                                                                        jmp   n146_lit_string_α
n145_statement_begin_β:
                                                                                        jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n147_assign_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx434_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n148_statement_end_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n149_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)              :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α:
                                                                                        jmp   n150_var_α
n149_statement_begin_β:
                                                                                        jmp   n164_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:
                        sub              rsp, 1616
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
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # S5
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1440], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1448], r14                    # outer_δ
                        mov              qword ptr [rbp + 1456], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1464], rax                    # cap_gen
                        mov              qword ptr [rbp + 1432], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1408], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1392], 0                      # start_δ
.Lx441_0:
                        mov              r14d, dword ptr [rbp + 1392]
                                                                                        jmp   n152_lit_integer_α
n151_match_begin_β:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, r15d
                                                                                        jg    .Lx441_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx441_1
                                                                                        jmp   .Lx441_0
.Lx441_1:
n151_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1408]
                        mov              r13, qword ptr [rbp + 1440]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1448]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1456]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1464]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1432]                    # old_rbp
                        add              rsp, 1616
                                                                                        jmp   n164_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rsp + 1472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n153_match_pos_α
.Lx442_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n153_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n151_match_begin_β
                                                                                        jmp   n154_match_arbno_α
n153_match_pos_β:
                                                                                        jmp   n151_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_match_arbno_α:
                        mov              dword ptr [rbp + 1504], r14d
                        mov              dword ptr [rbp + 1508], r14d
                        mov              dword ptr [rbp + 1512], 0
                        mov              qword ptr [rbp + 1528], rsp
                        mov              qword ptr [rbp + 1536], rbp
                        mov              qword ptr [rbp + 1520], 0
                                                                                        jmp   n155_lit_integer_α
n154_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1508]
                        mov              rax, qword ptr [rbp + 1520]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1520], rsp
                        mov              rbp, rsp
                        add              rbp, -1528
                                                                                        jmp   n163_match_defer_α
n154_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              r14d, eax
                                                                                        je    n163_match_defer_β
                        mov              rbp, qword ptr [rbp + 1528]
                        mov              eax, dword ptr [rbp + 1512]
                        add              eax, 1
                        mov              dword ptr [rbp + 1512], eax
                        mov              dword ptr [rbp + 1508], r14d
                                                                                        jmp   n155_lit_integer_α
n154_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1528]
                        lea              rsp, [rbp + 1592]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1512]
                        test             ecx, ecx
                                                                                        jz    .Lx445_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1512], ecx
                        mov              qword ptr [rbp + 1520], rax
                        lea              rbp, [rax + -1528]
                                                                                        jmp   n163_match_defer_β
.Lx445_2:
                        mov              r14d, dword ptr [rbp + 1504]
                        mov              rbp, qword ptr [rbp + 1536]
                        mov              rsp, qword ptr [rbp + 1528]
                                                                                        jmp   n153_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rsp + 1584], 3                      # result
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 1592], rax
                                                                                        jmp   n156_match_rpos_α
.Lx446_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n156_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n154_match_arbno_β
                                                                                        jmp   n157_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_match_end_α:
                        mov              r10, r12
.Lx449_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx449_9
                        mov              rsp, qword ptr [rbp + 1408]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx449_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx449_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx449_1:
                        test             rax, rax
                                                                                        je    .Lx449_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx449_3]
                        lea              rdx, [rip + .Lx449_4]
                                                                                        jmp   rax
.Lx449_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx449_1
.Lx449_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx449_1
.Lx449_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1440]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1448]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1456]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1464]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1432]                    # old_rbp
                                                                                        jmp   n158_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:
                        add              rsp, 1616
                                                                                        jmp   n159_statement_begin_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"                      :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α:
                                                                                        jmp   n160_lit_string_α
n159_statement_begin_β:
                                                                                        jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n161_assign_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx455_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n162_statement_end_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_match_defer_α:
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx458_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx458_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx458_10
.Lx458_9:
                        xor              eax, eax
.Lx458_10:
                        test             rax, rax
                                                                                        jz    .Lx458_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx458_4]
                        lea              rdx, [rip + .Lx458_5]
                                                                                        jmp   rax
.Lx458_4:
                                                                                        jmp   n154_match_arbno_as
.Lx458_5:
                                                                                        jmp   n154_match_arbno_af
.Lx458_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx458_2:
                        test             rax, rax
                                                                                        je    .Lx458_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx458_7]
                        lea              rdx, [rip + .Lx458_8]
                                                                                        jmp   rax
.Lx458_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx458_2
.Lx458_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx458_2
.Lx458_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n154_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx458_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n154_match_arbno_as
.Lx458_6:
                        add              rsp, 16
                                                                                        jmp   n154_match_arbno_af
n163_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α:
                                                                                        jmp   n165_lit_string_α
n164_statement_begin_β:
                                                                                        jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n166_assign_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx462_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n167_statement_end_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n168_statement_begin_α
#=======================================================================================================================
# N5      S6 POS(0) ARBNO(*E) RPOS(0)              :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α:
                                                                                        jmp   n169_var_α
n168_statement_begin_β:
                                                                                        jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:
                        sub              rsp, 1904
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
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # S6
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n170_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1712], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1720], r14                    # outer_δ
                        mov              qword ptr [rbp + 1728], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax                    # cap_gen
                        mov              qword ptr [rbp + 1704], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1680], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1664], 0                      # start_δ
.Lx469_0:
                        mov              r14d, dword ptr [rbp + 1664]
                                                                                        jmp   n171_lit_integer_α
n170_match_begin_β:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, r15d
                                                                                        jg    .Lx469_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx469_1
                                                                                        jmp   .Lx469_0
.Lx469_1:
n170_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1680]
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]                    # old_rbp
                        add              rsp, 1904
                                                                                        jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rsp + 1744], 3                      # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 1752], rax
                                                                                        jmp   n172_match_pos_α
.Lx470_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n172_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n170_match_begin_β
                                                                                        jmp   n173_match_arbno_α
n172_match_pos_β:
                                                                                        jmp   n170_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n173_match_arbno_α:
                        mov              dword ptr [rbp + 1776], r14d
                        mov              dword ptr [rbp + 1780], r14d
                        mov              dword ptr [rbp + 1784], 0
                        mov              qword ptr [rbp + 1800], rsp
                        mov              qword ptr [rbp + 1808], rbp
                        mov              qword ptr [rbp + 1792], 0
                                                                                        jmp   n174_lit_integer_α
n173_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1780]
                        mov              rax, qword ptr [rbp + 1792]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1792], rsp
                        mov              rbp, rsp
                        add              rbp, -1800
                                                                                        jmp   n183_match_defer_α
n173_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              r14d, eax
                                                                                        je    n183_match_defer_β
                        mov              rbp, qword ptr [rbp + 1800]
                        mov              eax, dword ptr [rbp + 1784]
                        add              eax, 1
                        mov              dword ptr [rbp + 1784], eax
                        mov              dword ptr [rbp + 1780], r14d
                                                                                        jmp   n174_lit_integer_α
n173_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              rsp, [rbp + 1880]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1784]
                        test             ecx, ecx
                                                                                        jz    .Lx473_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1784], ecx
                        mov              qword ptr [rbp + 1792], rax
                        lea              rbp, [rax + -1800]
                                                                                        jmp   n183_match_defer_β
.Lx473_2:
                        mov              r14d, dword ptr [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1808]
                        mov              rsp, qword ptr [rbp + 1800]
                                                                                        jmp   n172_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rsp + 1872], 3                      # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 1880], rax
                                                                                        jmp   n175_match_rpos_α
.Lx474_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n175_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n173_match_arbno_β
                                                                                        jmp   n176_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n176_match_end_α:
                        mov              r10, r12
.Lx477_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx477_9
                        mov              rsp, qword ptr [rbp + 1680]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx477_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx477_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx477_1:
                        test             rax, rax
                                                                                        je    .Lx477_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx477_3]
                        lea              rdx, [rip + .Lx477_4]
                                                                                        jmp   rax
.Lx477_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx477_1
.Lx477_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx477_1
.Lx477_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]                    # old_rbp
                                                                                        jmp   n177_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:
                        add              rsp, 1904
                                                                                        jmp   n178_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"                      :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α:
                                                                                        jmp   n179_lit_string_α
n178_statement_begin_β:
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n180_assign_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx483_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n181_statement_end_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rsp + 1856], 2                      # result
                        mov              dword ptr [rsp + 1860], 5
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 1864], rax
                                                                                        jmp   main_γ
n182_lit_string_β:
                                                                                        jmp   main_ω
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n183_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx487_11
                        mov              rax, qword ptr [1879052320]                    # E
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx487_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx487_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx487_10
.Lx487_9:
                        xor              eax, eax
.Lx487_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx487_11:
                        test             rax, rax
                                                                                        jz    .Lx487_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx487_4]
                        lea              rdx, [rip + .Lx487_5]
                                                                                        jmp   rax
.Lx487_4:
                                                                                        jmp   n173_match_arbno_as
.Lx487_5:
                                                                                        jmp   n173_match_arbno_af
.Lx487_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx487_2:
                        test             rax, rax
                                                                                        je    .Lx487_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx487_7]
                        lea              rdx, [rip + .Lx487_8]
                                                                                        jmp   rax
.Lx487_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx487_2
.Lx487_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx487_2
.Lx487_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n173_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx487_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n173_match_arbno_as
.Lx487_6:
                        add              rsp, 16
                                                                                        jmp   n173_match_arbno_af
n183_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:
                                                                                        jmp   n185_lit_string_α
n184_statement_begin_β:
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n186_assign_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx491_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n187_statement_end_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n188_statement_begin_α
#=======================================================================================================================
# N6      S7 POS(0) ARBNO(*G) RPOS(0)              :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α:
                                                                                        jmp   n189_var_α
n188_statement_begin_β:
                                                                                        jmp   n203_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        sub              rsp, 2176
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
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # S7
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n190_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2000], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2008], r14                    # outer_δ
                        mov              qword ptr [rbp + 2016], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2024], rax                    # cap_gen
                        mov              qword ptr [rbp + 1992], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1968], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1952], 0                      # start_δ
.Lx498_0:
                        mov              r14d, dword ptr [rbp + 1952]
                                                                                        jmp   n191_lit_integer_α
n190_match_begin_β:
                        add              dword ptr [rbp + 1952], 1
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, r15d
                                                                                        jg    .Lx498_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx498_1
                                                                                        jmp   .Lx498_0
.Lx498_1:
n190_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1968]
                        mov              r13, qword ptr [rbp + 2000]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2008]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2016]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2024]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1992]                    # old_rbp
                        add              rsp, 2176
                                                                                        jmp   n203_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        mov              qword ptr [rsp + 2032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   n192_match_pos_α
.Lx499_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n192_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n190_match_begin_β
                                                                                        jmp   n193_match_arbno_α
n192_match_pos_β:
                                                                                        jmp   n190_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n193_match_arbno_α:
                        mov              dword ptr [rbp + 2064], r14d
                        mov              dword ptr [rbp + 2068], r14d
                        mov              dword ptr [rbp + 2072], 0
                        mov              qword ptr [rbp + 2088], rsp
                        mov              qword ptr [rbp + 2096], rbp
                        mov              qword ptr [rbp + 2080], 0
                                                                                        jmp   n194_lit_integer_α
n193_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2068]
                        mov              rax, qword ptr [rbp + 2080]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2080], rsp
                        mov              rbp, rsp
                        add              rbp, -2088
                                                                                        jmp   n202_match_defer_α
n193_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              r14d, eax
                                                                                        je    n202_match_defer_β
                        mov              rbp, qword ptr [rbp + 2088]
                        mov              eax, dword ptr [rbp + 2072]
                        add              eax, 1
                        mov              dword ptr [rbp + 2072], eax
                        mov              dword ptr [rbp + 2068], r14d
                                                                                        jmp   n194_lit_integer_α
n193_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              rsp, [rbp + 2152]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2072]
                        test             ecx, ecx
                                                                                        jz    .Lx502_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2072], ecx
                        mov              qword ptr [rbp + 2080], rax
                        lea              rbp, [rax + -2088]
                                                                                        jmp   n202_match_defer_β
.Lx502_2:
                        mov              r14d, dword ptr [rbp + 2064]
                        mov              rbp, qword ptr [rbp + 2096]
                        mov              rsp, qword ptr [rbp + 2088]
                                                                                        jmp   n192_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rsp + 2144], 3                      # result
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 2152], rax
                                                                                        jmp   n195_match_rpos_α
.Lx503_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n195_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n193_match_arbno_β
                                                                                        jmp   n196_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n196_match_end_α:
                        mov              r10, r12
.Lx506_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx506_9
                        mov              rsp, qword ptr [rbp + 1968]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx506_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx506_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx506_1:
                        test             rax, rax
                                                                                        je    .Lx506_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx506_3]
                        lea              rdx, [rip + .Lx506_4]
                                                                                        jmp   rax
.Lx506_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx506_1
.Lx506_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx506_1
.Lx506_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 2000]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2008]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2016]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2024]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1992]                    # old_rbp
                                                                                        jmp   n197_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:
                        add              rsp, 2176
                                                                                        jmp   n198_statement_begin_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"                      :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_begin_α:
                                                                                        jmp   n199_lit_string_α
n198_statement_begin_β:
                                                                                        jmp   n207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n200_assign_α
.Lx511_0:
                        .quad            .Lx511_0_s
.Lx511_0_s:
                        .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx512_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n201_statement_end_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n202_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx515_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx515_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx515_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx515_10
.Lx515_9:
                        xor              eax, eax
.Lx515_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx515_11:
                        test             rax, rax
                                                                                        jz    .Lx515_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx515_4]
                        lea              rdx, [rip + .Lx515_5]
                                                                                        jmp   rax
.Lx515_4:
                                                                                        jmp   n193_match_arbno_as
.Lx515_5:
                                                                                        jmp   n193_match_arbno_af
.Lx515_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx515_2:
                        test             rax, rax
                                                                                        je    .Lx515_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx515_7]
                        lea              rdx, [rip + .Lx515_8]
                                                                                        jmp   rax
.Lx515_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx515_2
.Lx515_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx515_2
.Lx515_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n193_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx515_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n193_match_arbno_as
.Lx515_6:
                        add              rsp, 16
                                                                                        jmp   n193_match_arbno_af
n202_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_begin_α:
                                                                                        jmp   n204_lit_string_α
n203_statement_begin_β:
                                                                                        jmp   n207_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n205_assign_α
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx519_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n206_statement_end_α
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n207_statement_begin_α
#=======================================================================================================================
# N7      S8 POS(0) ARBNO(*G) *G RPOS(0)           :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α:
                                                                                        jmp   n208_var_α
n207_statement_begin_β:
                                                                                        jmp   n223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:
                        sub              rsp, 2464
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
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S8
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n209_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2272], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2280], r14                    # outer_δ
                        mov              qword ptr [rbp + 2288], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2296], rax                    # cap_gen
                        mov              qword ptr [rbp + 2264], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2240], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 2224], 0                      # start_δ
.Lx526_0:
                        mov              r14d, dword ptr [rbp + 2224]
                                                                                        jmp   n210_lit_integer_α
n209_match_begin_β:
                        add              dword ptr [rbp + 2224], 1
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, r15d
                                                                                        jg    .Lx526_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx526_1
                                                                                        jmp   .Lx526_0
.Lx526_1:
n209_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 2240]
                        mov              r13, qword ptr [rbp + 2272]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2280]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2288]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2296]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2264]                    # old_rbp
                        add              rsp, 2464
                                                                                        jmp   n223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:
                        mov              qword ptr [rsp + 2304], 3                      # result
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 2312], rax
                                                                                        jmp   n211_match_pos_α
.Lx527_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n211_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n209_match_begin_β
                                                                                        jmp   n212_match_arbno_α
n211_match_pos_β:
                                                                                        jmp   n209_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n212_match_arbno_α:
                        mov              dword ptr [rbp + 2336], r14d
                        mov              dword ptr [rbp + 2340], r14d
                        mov              dword ptr [rbp + 2344], 0
                        mov              qword ptr [rbp + 2360], rsp
                        mov              qword ptr [rbp + 2368], rbp
                        mov              qword ptr [rbp + 2352], 0
                                                                                        jmp   n213_match_defer_α
n212_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2340]
                        mov              rax, qword ptr [rbp + 2352]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2352], rsp
                        mov              rbp, rsp
                        add              rbp, -2360
                                                                                        jmp   n222_match_defer_α
n212_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              r14d, eax
                                                                                        je    n222_match_defer_β
                        mov              rbp, qword ptr [rbp + 2360]
                        mov              eax, dword ptr [rbp + 2344]
                        add              eax, 1
                        mov              dword ptr [rbp + 2344], eax
                        mov              dword ptr [rbp + 2340], r14d
                                                                                        jmp   n213_match_defer_α
n212_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              rsp, [rbp + 2424]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2344]
                        test             ecx, ecx
                                                                                        jz    .Lx530_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2344], ecx
                        mov              qword ptr [rbp + 2352], rax
                        lea              rbp, [rax + -2360]
                                                                                        jmp   n222_match_defer_β
.Lx530_2:
                        mov              r14d, dword ptr [rbp + 2336]
                        mov              rbp, qword ptr [rbp + 2368]
                        mov              rsp, qword ptr [rbp + 2360]
                                                                                        jmp   n211_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n213_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx531_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx531_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx531_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx531_10
.Lx531_9:
                        xor              eax, eax
.Lx531_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx531_11:
                        test             rax, rax
                                                                                        jz    .Lx531_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx531_4]
                        lea              rdx, [rip + .Lx531_5]
                                                                                        jmp   rax
.Lx531_4:
                                                                                        jmp   n214_lit_integer_α
.Lx531_5:
                                                                                        jmp   n212_match_arbno_β
.Lx531_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx531_2:
                        test             rax, rax
                                                                                        je    .Lx531_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx531_7]
                        lea              rdx, [rip + .Lx531_8]
                                                                                        jmp   rax
.Lx531_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx531_2
.Lx531_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx531_2
.Lx531_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n212_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx531_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_lit_integer_α
.Lx531_6:
                        add              rsp, 16
                                                                                        jmp   n212_match_arbno_β
n213_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:
                        mov              qword ptr [rsp + 2432], 3                      # result
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 2440], rax
                                                                                        jmp   n215_match_rpos_α
.Lx532_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n215_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n213_match_defer_β
                                                                                        jmp   n216_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n216_match_end_α:
                        mov              r10, r12
.Lx535_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx535_9
                        mov              rsp, qword ptr [rbp + 2240]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx535_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx535_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx535_1:
                        test             rax, rax
                                                                                        je    .Lx535_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx535_3]
                        lea              rdx, [rip + .Lx535_4]
                                                                                        jmp   rax
.Lx535_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx535_1
.Lx535_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx535_1
.Lx535_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 2272]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2280]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2288]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2296]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2264]                    # old_rbp
                                                                                        jmp   n217_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:
                        add              rsp, 2464
                                                                                        jmp   n218_statement_begin_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"                      :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:
                                                                                        jmp   n219_lit_string_α
n218_statement_begin_β:
                                                                                        jmp   n227_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n220_assign_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx541_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n221_statement_end_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n227_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n222_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx544_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx544_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx544_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx544_10
.Lx544_9:
                        xor              eax, eax
.Lx544_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx544_11:
                        test             rax, rax
                                                                                        jz    .Lx544_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx544_4]
                        lea              rdx, [rip + .Lx544_5]
                                                                                        jmp   rax
.Lx544_4:
                                                                                        jmp   n212_match_arbno_as
.Lx544_5:
                                                                                        jmp   n212_match_arbno_af
.Lx544_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx544_2:
                        test             rax, rax
                                                                                        je    .Lx544_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx544_7]
                        lea              rdx, [rip + .Lx544_8]
                                                                                        jmp   rax
.Lx544_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx544_2
.Lx544_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx544_2
.Lx544_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n212_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx544_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n212_match_arbno_as
.Lx544_6:
                        add              rsp, 16
                                                                                        jmp   n212_match_arbno_af
n222_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α:
                                                                                        jmp   n224_lit_string_α
n223_statement_begin_β:
                                                                                        jmp   n227_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n225_assign_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx548_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n226_statement_end_α
.Lx548_0:
                        .quad            .Lx548_0_s
.Lx548_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n227_statement_begin_α
#=======================================================================================================================
# N8      OUTPUT = "DONE"
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_begin_α:
                                                                                        jmp   n228_lit_string_α
n227_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n229_assign_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "DONE"
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx554_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n230_statement_end_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n231_goto_α:
                                                                                        jmp   n83_statement_begin_α
n231_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n232_goto_α:
                                                                                        jmp   n88_statement_begin_α
n232_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n233_goto_α:
                                                                                        jmp   n92_statement_begin_α
n233_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_goto_α:
                                                                                        jmp   n102_statement_begin_α
n234_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n235_goto_α:
                                                                                        jmp   n107_statement_begin_α
n235_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_goto_α:
                                                                                        jmp   n111_statement_begin_α
n236_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_goto_α:
                                                                                        jmp   n121_statement_begin_α
n237_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n238_goto_α:
                                                                                        jmp   n126_statement_begin_α
n238_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_goto_α:
                                                                                        jmp   n130_statement_begin_α
n239_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n240_goto_α:
                                                                                        jmp   n140_statement_begin_α
n240_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_goto_α:
                                                                                        jmp   n145_statement_begin_α
n241_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n242_goto_α:
                                                                                        jmp   n149_statement_begin_α
n242_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n243_goto_α:
                                                                                        jmp   n159_statement_begin_α
n243_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n244_goto_α:
                                                                                        jmp   n164_statement_begin_α
n244_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n245_goto_α:
                                                                                        jmp   n168_statement_begin_α
n245_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_goto_α:
                                                                                        jmp   n178_statement_begin_α
n246_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_goto_α:
                                                                                        jmp   n184_statement_begin_α
n247_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_goto_α:
                                                                                        jmp   n188_statement_begin_α
n248_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_goto_α:
                                                                                        jmp   n198_statement_begin_α
n249_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_goto_α:
                                                                                        jmp   n203_statement_begin_α
n250_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n251_goto_α:
                                                                                        jmp   n207_statement_begin_α
n251_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n252_goto_α:
                                                                                        jmp   n218_statement_begin_α
n252_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_goto_α:
                                                                                        jmp   n223_statement_begin_α
n253_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n254_goto_α:
                                                                                        jmp   n227_statement_begin_α
n254_goto_β:
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
.S0:                    .string          "G"
.S1:                    .string          "W"
.S2:                    .string          "E"
                        .text
                        .section         .note.GNU-stack,"",@progbits
