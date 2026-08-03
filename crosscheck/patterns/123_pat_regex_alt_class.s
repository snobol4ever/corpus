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
                        lea              rax, [rip + n0_match_any_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$0_scanfail
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    proc_PAT$0_scanfail
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx3_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx3_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx4_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx4_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx4_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx4_0:
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
                        sub              rsp, 96
                        mov              qword ptr [rsp + 72], rcx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n5_match_any_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n5_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$1_scanfail
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    proc_PAT$1_scanfail
                        add              r14d, 1
                                                                                        jmp   proc_PAT$1_scanhit
n5_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx8_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx8_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx9_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx9_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx9_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx9_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n10_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx14_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n12_match_span_α
.Lx14_21:
                        lea              rax, [rip + .Lx14_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n11_match_span_α
n10_match_alternate_s0:
                        lea              rax, [rip + .Lx14_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
n10_match_alternate_s1:
                        lea              rax, [rip + .Lx14_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
.Lx14_40:
                                                                                        jmp   n12_match_span_β
.Lx14_41:
                                                                                        jmp   n11_match_span_β
n10_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n10_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n10_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx14_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx16_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx16_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx16_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx16_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx16_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx16_1
                        add              ecx, 1
                                                                                        jmp   .Lx16_0
.Lx16_1:
                        cmp              ecx, r14d
                                                                                        jle   n10_match_alternate_af
                        mov              dword ptr [rbp + 68], r14d
                        mov              r14d, ecx
                                                                                        jmp   n10_match_alternate_s1
n11_match_span_β:
                        mov              r14d, dword ptr [rbp + 68]
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_span_α:
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx18_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx18_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx18_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx18_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx18_1
                        add              ecx, 1
                                                                                        jmp   .Lx18_0
.Lx18_1:
                        cmp              ecx, r14d
                                                                                        jle   n10_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n10_match_alternate_s0
n12_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n10_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx19_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx19_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx20_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx20_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx20_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx20_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
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
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "digit"
.Lgvan1:                .string          "alpha"
.Lgvan2:                .string          "token"
.Lgvan3:                .string          "s"
.Lgvan4:                .string          "T"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         digit  = ANY('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_call_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd69:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd69]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx68_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_statement_begin_α
.Lx68_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_assign_α
n23_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # digit
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n26_statement_begin_α
#=======================================================================================================================
#         alpha  = ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_call_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd77:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd77]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx76_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n31_statement_begin_α
.Lx76_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_assign_α
n28_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # alpha
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n30_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n31_statement_begin_α
#=======================================================================================================================
#         token  = FENCE(SPAN('0123456789') | SPAN('abcdefghijklmnopqrstuvwxyz'))
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_call_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd85:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd85]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx84_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_α
.Lx84_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_assign_α
n33_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # token
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n36_statement_begin_α
#=======================================================================================================================
#         s = 'abc'
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # s
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n40_statement_begin_α
#=======================================================================================================================
#         s POS(0) token . T RPOS(0)                            :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # s
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_match_begin_α:
                        sub              rsp, 448
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
                        mov              rdi, qword ptr [rsp + 448]                     # var
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 280], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 288], r13                     # outer_Σ
                        mov              qword ptr [rbp + 296], r14                     # outer_δ
                        mov              qword ptr [rbp + 304], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 256], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 248], rax                     # patstk_mark
                        mov              dword ptr [rbp + 240], 0                       # start_δ
.Lx99_0:
                        mov              r14d, dword ptr [rbp + 240]
                                                                                        jmp   n43_match_sequence_α
n42_match_begin_β:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, r15d
                                                                                        jg    .Lx99_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx99_1
                                                                                        jmp   .Lx99_0
.Lx99_1:
                        mov              rax, qword ptr [rbp + 248]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 256]
                        mov              r10, qword ptr [1879048192]
.Lx99_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx99_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 296]                     # outer_δ
                        mov              r15, qword ptr [rbp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 280]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_match_sequence_α:
                        mov              dword ptr [rbp + 320], r14d
                                                                                        jmp   n57_lit_integer_α
n43_match_sequence_as:
                                                                                        jmp   n44_match_end_α
n43_match_sequence_β:
                                                                                        jmp   n53_match_rpos_β
n43_match_sequence_af:
                                                                                        jmp   n42_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_end_α:
                        mov              rax, qword ptr [rbp + 248]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 256]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx103_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx103_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx103_1:
                        test             rax, rax
                                                                                        je    .Lx103_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx103_3]
                        lea              rdx, [rip + .Lx103_4]
                                                                                        jmp   rax
.Lx103_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx103_1
.Lx103_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx103_1
.Lx103_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx103_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx103_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 296]                     # outer_δ
                        mov              r15, qword ptr [rbp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:
                        mov              rbp, qword ptr [rbp + 280]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n46_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'token: ' T                                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_var_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "token: "
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx111_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n51_statement_end_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n53_match_rpos_α
n52_lit_integer_β:
                                                                                        jmp   n56_match_assign_cond_β
.Lx114_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n53_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n56_match_assign_cond_β
                                                                                        jmp   n44_match_end_α
n53_match_rpos_β:
                                                                                        jmp   n56_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n54_match_assign_save_α:
                        lea              rdi, [rbp + 384]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n55_match_patref_α
n54_match_assign_save_β:
                        lea              rdi, [rbp + 384]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n42_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n55_match_patref_α:
                        mov              qword ptr [rbp + 400], rsp
                        mov              rax, qword ptr [1879052320]                    # token
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx118_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx118_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx118_10
.Lx118_9:
                        xor              eax, eax
.Lx118_10:
                        test             rax, rax
                                                                                        jz    .Lx118_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx118_4]
                        lea              rdx, [rip + .Lx118_5]
                                                                                        jmp   rax
.Lx118_4:
                        mov              rsp, qword ptr [rbp + 400]
                                                                                        jmp   n56_match_assign_cond_α
.Lx118_5:
                        mov              rsp, qword ptr [rbp + 400]
                                                                                        jmp   n54_match_assign_save_β
.Lx118_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx118_2:
                        test             rax, rax
                                                                                        je    .Lx118_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx118_7]
                        lea              rdx, [rip + .Lx118_8]
                                                                                        jmp   rax
.Lx118_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx118_2
.Lx118_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx118_2
.Lx118_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n54_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx118_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n56_match_assign_cond_α
.Lx118_6:
                        add              rsp, 16
                                                                                        jmp   n54_match_assign_save_β
n55_match_patref_β:
                        mov              rsp, qword ptr [rbp + 400]
                                                                                        jmp   n54_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n56_match_assign_cond_α:
                        lea              rdi, [rbp + 384]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n52_lit_integer_α
n56_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n55_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rsp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n58_match_pos_α
n57_lit_integer_β:
                                                                                        jmp   n42_match_begin_β
.Lx121_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n58_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n42_match_begin_β
                                                                                        jmp   n54_match_assign_save_α
n58_match_pos_β:
                                                                                        jmp   n42_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_assign_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx126_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n62_statement_end_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:
                                                                                        jmp   n46_statement_begin_α
n63_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_α:
                                                                                        jmp   n59_statement_begin_α
n64_goto_β:
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
.S0:                    .string          "token"
.S1:                    .string          "T"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
