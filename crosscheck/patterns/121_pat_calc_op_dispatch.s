                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 48], r8
                        mov              dword ptr [rsp + 40], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_span_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx2_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
                        add              ecx, 1
                                                                                        jmp   .Lx2_0
.Lx2_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx2_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx2_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx3_0
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx3_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx4_0
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx4_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx4_0
                        mov              dword ptr [rbp + 40], eax
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
                                                                                        jmp   qword ptr [rbp + 16]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n5_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx9_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n7_match_span_α
.Lx9_21:
                        lea              rax, [rip + .Lx9_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n6_match_len_α
n5_match_alternate_s0:
                        lea              rax, [rip + .Lx9_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n5_match_alternate_as
n5_match_alternate_s1:
                        lea              rax, [rip + .Lx9_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n5_match_alternate_as
.Lx9_40:
                                                                                        jmp   n7_match_span_β
.Lx9_41:
                                                                                        jmp   n6_match_len_β
n5_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n5_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n5_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx9_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    n5_match_alternate_af
                        add              r14d, 0
                                                                                        jmp   n5_match_alternate_s1
n6_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_span_α:
                        movsxd           rcx, r14d
.Lx12_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx12_10
                                                                                        jmp   .Lx12_1
.Lx12_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx12_11
                                                                                        jmp   .Lx12_1
.Lx12_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx12_12
                                                                                        jmp   .Lx12_1
.Lx12_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx12_13
                                                                                        jmp   .Lx12_1
.Lx12_13:
                        add              ecx, 1
                                                                                        jmp   .Lx12_0
.Lx12_1:
                        cmp              ecx, r14d
                                                                                        jle   n5_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n5_match_alternate_s0
n7_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n5_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx13_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx13_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx14_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx14_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx14_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx14_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n15_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx21_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n19_match_lit_α
.Lx21_21:
                        lea              rax, [rip + .Lx21_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n18_match_lit_α
.Lx21_22:
                        lea              rax, [rip + .Lx21_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n17_match_lit_α
.Lx21_23:
                        lea              rax, [rip + .Lx21_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n16_match_lit_α
n15_match_alternate_s0:
                        lea              rax, [rip + .Lx21_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n15_match_alternate_as
n15_match_alternate_s1:
                        lea              rax, [rip + .Lx21_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n15_match_alternate_as
n15_match_alternate_s2:
                        lea              rax, [rip + .Lx21_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n15_match_alternate_as
n15_match_alternate_s3:
                        lea              rax, [rip + .Lx21_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n15_match_alternate_as
.Lx21_40:
                                                                                        jmp   n19_match_lit_β
.Lx21_41:
                                                                                        jmp   n18_match_lit_β
.Lx21_42:
                                                                                        jmp   n17_match_lit_β
.Lx21_43:
                                                                                        jmp   n16_match_lit_β
n15_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n15_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n15_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx21_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n15_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n15_match_alternate_s3
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n15_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n15_match_alternate_s2
n17_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n15_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n15_match_alternate_s1
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n15_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n15_match_alternate_s0
n19_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx30_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx30_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx31_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx31_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx31_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx31_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
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
                        mov              esi, 32
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
                        mov              esi, 96
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
                        mov              esi, 80
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
.Lgvan0:                .string          "num"
.Lgvan1:                .string          "ws"
.Lgvan2:                .string          "op"
.Lgvan3:                .string          "s"
.Lgvan4:                .string          "A"
.Lgvan5:                .string          "OP"
.Lgvan6:                .string          "B"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
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
#         num    = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:
                                                                                        jmp   n33_lit_string_α
n32_statement_begin_β:
                                                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_call_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd103:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd103]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx102_240
                                                                                        jmp   n36_statement_end_α
.Lx102_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_α
n34_call_β:
                                                                                        jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # num
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n37_statement_begin_α
#=======================================================================================================================
#         ws     = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:
                                                                                        jmp   n38_lit_string_α
n37_statement_begin_β:
                                                                                        jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_call_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd111:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd111]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx110_240
                                                                                        jmp   n41_statement_end_α
.Lx110_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_assign_α
n39_call_β:
                                                                                        jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ws
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n42_statement_begin_α
#=======================================================================================================================
#         op     = FENCE('+' | '-' | '*' | '/')
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:
                                                                                        jmp   n43_lit_string_α
n42_statement_begin_β:
                                                                                        jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_call_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd119:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd119]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx118_240
                                                                                        jmp   n46_statement_end_α
.Lx118_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_assign_α
n44_call_β:
                                                                                        jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # op
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n47_statement_begin_α
#=======================================================================================================================
#         s = '7 * 3'
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:
                                                                                        jmp   n48_lit_string_α
n47_statement_begin_β:
                                                                                        jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_assign_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "7 * 3"
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # s
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n51_statement_begin_α
#=======================================================================================================================
#         s POS(0) num . A ws op . OP ws num . B RPOS(0)        :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:
                                                                                        jmp   n52_var_α
n51_statement_begin_β:
                                                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # s
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # num
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_assign_α
n53_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx133_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n55_var_α
n54_assign_β:
                                                                                        jmp   n53_var_β
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "PATV$4"
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_assign_α
n55_var_β:
                        add              rsp, 16
                                                                                        jmp   n54_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx135_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n57_var_α
n56_assign_β:
                                                                                        jmp   n55_var_β
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "PATV$3"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # op
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_assign_α
n57_var_β:
                        add              rsp, 16
                                                                                        jmp   n56_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx137_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n59_var_α
n58_assign_β:
                                                                                        jmp   n57_var_β
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "PATV$2"
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_assign_α
n59_var_β:
                        add              rsp, 16
                                                                                        jmp   n58_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx139_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n61_var_α
n60_assign_β:
                                                                                        jmp   n59_var_β
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "PATV$1"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # num
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
n61_var_β:
                        add              rsp, 16
                                                                                        jmp   n60_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx141_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_match_begin_α
n62_assign_β:
                                                                                        jmp   n61_var_β
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n63_match_begin_α:
                        sub              rsp, 512
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
                        mov              rdi, qword ptr [rsp + 592]                     # var
                        mov              rsi, qword ptr [rsp + 600]
                        mov              qword ptr [rbp + 288], r13                     # outer_Σ
                        mov              qword ptr [rbp + 296], r14                     # outer_δ
                        mov              qword ptr [rbp + 304], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax                     # cap_gen
                        mov              qword ptr [rbp + 280], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 256], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 240], 0                       # start_δ
.Lx143_0:
                        mov              r14d, dword ptr [rbp + 240]
                                                                                        jmp   n64_lit_integer_α
n63_match_begin_β:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, r15d
                                                                                        jg    .Lx143_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx143_1
                                                                                        jmp   .Lx143_0
.Lx143_1:
n63_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 256]
                        mov              r13, qword ptr [rbp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 296]                     # outer_δ
                        mov              r15, qword ptr [rbp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 280]                     # old_rbp
                        add              rsp, 512
                                                                                        jmp   n62_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_match_pos_α
.Lx144_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n65_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n63_match_begin_β
                                                                                        jmp   n66_match_assign_save_α
n65_match_pos_β:
                                                                                        jmp   n63_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n66_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n67_match_defer_α
n66_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n63_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx148_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx148_4]
                        lea              rdx, [rip + .Lx148_5]
                                                                                        jmp   rax
.Lx148_4:
                                                                                        jmp   n68_match_assign_cond_α
.Lx148_5:
                                                                                        jmp   n66_match_assign_save_β
.Lx148_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx148_2:
                        test             rax, rax
                                                                                        je    .Lx148_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx148_7]
                        lea              rdx, [rip + .Lx148_8]
                                                                                        jmp   rax
.Lx148_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx148_2
.Lx148_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx148_2
.Lx148_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n66_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx148_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n68_match_assign_cond_α
.Lx148_6:
                        add              rsp, 16
                                                                                        jmp   n66_match_assign_save_β
n67_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n68_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n69_match_defer_α
n68_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n67_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n69_match_defer_α:
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx151_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx151_4]
                        lea              rdx, [rip + .Lx151_5]
                                                                                        jmp   rax
.Lx151_4:
                                                                                        jmp   n70_match_assign_save_α
.Lx151_5:
                                                                                        jmp   n68_match_assign_cond_β
.Lx151_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx151_2:
                        test             rax, rax
                                                                                        je    .Lx151_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx151_7]
                        lea              rdx, [rip + .Lx151_8]
                                                                                        jmp   rax
.Lx151_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx151_2
.Lx151_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx151_2
.Lx151_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n68_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx151_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n70_match_assign_save_α
.Lx151_6:
                        add              rsp, 16
                                                                                        jmp   n68_match_assign_cond_β
n69_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n70_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n71_match_defer_α
n70_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n69_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_defer_α:
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx154_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx154_4]
                        lea              rdx, [rip + .Lx154_5]
                                                                                        jmp   rax
.Lx154_4:
                                                                                        jmp   n72_match_assign_cond_α
.Lx154_5:
                                                                                        jmp   n70_match_assign_save_β
.Lx154_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx154_2:
                        test             rax, rax
                                                                                        je    .Lx154_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx154_7]
                        lea              rdx, [rip + .Lx154_8]
                                                                                        jmp   rax
.Lx154_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx154_2
.Lx154_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx154_2
.Lx154_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n70_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx154_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n72_match_assign_cond_α
.Lx154_6:
                        add              rsp, 16
                                                                                        jmp   n70_match_assign_save_β
n71_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n72_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S4]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n73_match_defer_α
n72_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n71_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_defer_α:
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx157_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx157_4]
                        lea              rdx, [rip + .Lx157_5]
                                                                                        jmp   rax
.Lx157_4:
                                                                                        jmp   n74_match_assign_save_α
.Lx157_5:
                                                                                        jmp   n72_match_assign_cond_β
.Lx157_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx157_2:
                        test             rax, rax
                                                                                        je    .Lx157_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx157_7]
                        lea              rdx, [rip + .Lx157_8]
                                                                                        jmp   rax
.Lx157_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx157_2
.Lx157_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx157_2
.Lx157_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n72_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx157_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n74_match_assign_save_α
.Lx157_6:
                        add              rsp, 16
                                                                                        jmp   n72_match_assign_cond_β
n73_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n74_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n75_match_defer_α
n74_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n73_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_defer_α:
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx160_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx160_4]
                        lea              rdx, [rip + .Lx160_5]
                                                                                        jmp   rax
.Lx160_4:
                                                                                        jmp   n76_match_assign_cond_α
.Lx160_5:
                                                                                        jmp   n74_match_assign_save_β
.Lx160_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx160_2:
                        test             rax, rax
                                                                                        je    .Lx160_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx160_7]
                        lea              rdx, [rip + .Lx160_8]
                                                                                        jmp   rax
.Lx160_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx160_2
.Lx160_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx160_2
.Lx160_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n74_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx160_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n76_match_assign_cond_α
.Lx160_6:
                        add              rsp, 16
                                                                                        jmp   n74_match_assign_save_β
n75_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n76_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n77_lit_integer_α
n76_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n75_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_match_rpos_α
.Lx163_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n78_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n76_match_assign_cond_β
                                                                                        jmp   n79_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_match_end_α:
                        mov              r10, r12
.Lx166_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx166_9
                        mov              rsp, qword ptr [rbp + 256]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx166_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx166_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx166_1:
                        test             rax, rax
                                                                                        je    .Lx166_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx166_3]
                        lea              rdx, [rip + .Lx166_4]
                                                                                        jmp   rax
.Lx166_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx166_1
.Lx166_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx166_1
.Lx166_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 288]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 296]                     # outer_δ
                        mov              r15, qword ptr [rbp + 304]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 312]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 280]                     # old_rbp
                                                                                        jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:
                        add              rsp, 688
                                                                                        jmp   n81_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = A ' ' OP ' ' B                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:
                                                                                        jmp   n82_var_α
n81_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # A
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_binop_α
n83_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_var_α
n84_binop_β:
                        add              rsp, 16
                                                                                        jmp   n83_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # OP
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n86_binop_α
n85_var_β:
                        add              rsp, 16
                                                                                        jmp   n84_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_lit_string_α
n86_binop_β:
                        add              rsp, 16
                                                                                        jmp   n85_var_β
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_binop_α
n87_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n86_binop_β
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_var_α
n88_binop_β:
                        add              rsp, 16
                                                                                        jmp   n87_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # B
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_binop_α
n89_var_β:
                        add              rsp, 16
                                                                                        jmp   n88_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_assign_α
n90_binop_β:
                        add              rsp, 16
                                                                                        jmp   n89_var_β
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx180_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n92_statement_end_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:
                                                                                        jmp   n94_lit_string_α
n93_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n95_assign_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx186_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n96_statement_end_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:
                                                                                        jmp   n81_statement_begin_α
n97_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_goto_α:
                                                                                        jmp   n93_statement_begin_α
n98_goto_β:
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
.S0:                    .string          "PATV$0"
.S1:                    .string          "A"
.S2:                    .string          "PATV$1"
.S3:                    .string          "PATV$2"
.S4:                    .string          "OP"
.S5:                    .string          "PATV$3"
.S6:                    .string          "PATV$4"
.S7:                    .string          "B"
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
