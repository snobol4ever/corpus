                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__RSUM_α
proc_LBL__RSUM_α:
proc_LBL__RSUM_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n3_coerce_numeric_α
.Lx19_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx21_1
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
.Lx21_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx21_0:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx23_1
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
.Lx23_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n5_cmp_test_α
.Lx23_0:
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 256]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n9_var_α
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rsp + 320], 6
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n7_binop_α
.Lx26_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n16_save_restore_α
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n12_binop_α
.Lx31_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx32_0
                        mov              rax, qword ptr [rsp + 440]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 416], 6
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n13_call_α
.Lx32_0:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n16_save_restore_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n13_call_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx34_5
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_6]
                        lea              rdx, [rip + .Lx34_7]
                                                                                        jmp   rax
.Lx34_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx34_20
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx34_21
.Lx34_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx34_21:
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx34_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4]
                                                                                        jmp   rax
.Lx34_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_1:
                        call             rt_faildescr@PLT
.Lx34_2:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n16_save_restore_α
                                                                                        jmp   n14_binop_α
n13_call_β:
                                                                                        jmp   n16_save_restore_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx35_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx35_0
                        mov              rax, qword ptr [rsp + 360]
                        mov              rcx, qword ptr [rsp + 376]
                        add              rax, rcx
                        mov              qword ptr [rsp + 336], 6
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n15_assign_α
.Lx35_0:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n16_save_restore_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n16_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n16_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_γ:
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_RSUM_α
proc_RSUM_α:
proc_RSUM_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n39_save_restore_α:
                        mov              rdi, qword ptr [rsp + 40]
                        mov              rsi, qword ptr [rsp + 48]
                        lea              rdx, [rsp + 64]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n40_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx44_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx44_1
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "RSUM"
.Lx44_1:
                                                                                        jmp   proc_RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_β:
                                                                                        jmp   proc_RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_γ:
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n45_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n45_match_sequence_α:
                                                                                        jmp   n47_match_assign_save_α
n45_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n45_match_sequence_β:
                                                                                        jmp   n46_match_lit_β
n45_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n49_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n49_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_γ
n46_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n49_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n48_match_break_α
n47_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx57_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx57_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx57_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx57_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx57_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx57_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx57_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx57_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx57_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx57_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx57_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx57_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx57_1
                        add              ecx, 1
                                                                                        jmp   .Lx57_0
.Lx57_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n49_match_assign_cond_α
n48_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n46_match_lit_α
n49_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n48_match_break_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__RSUM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__RSUM_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1648
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "RSUM"
.Lstartup_pp1_0:        .string          "N"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_RSUM_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 112
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
.Lgvan0:                .string          "RSUM"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "PAT"
.Lgvan3:                .string          "WORD"
.Lgvan4:                .string          "T1"
.Lgvan5:                .string          "OUTER"
.Lgvan6:                .string          "T"
.Lgvan7:                .string          "DATA"
.Lgvan8:                .string          "IDX"
.Lgvan9:                .string          "TOTAL"
.Lgvan10:               .string          "I"
.Lgvan11:               .string          "CHECK"
.Lgvan12:               .string          "T2"
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
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 13
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 13
                        call             gva_register@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_lit_integer_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_call_α
.Lx167_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:
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
.Lrkfnzd169:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd169]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n63_lit_string_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n63_lit_string_α
n62_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n63_lit_string_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_lit_integer_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_call_α
.Lx171_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:
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
.Lrkfnzd173:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd173]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx172_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n66_lit_string_α
.Lx172_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n66_lit_string_α
n65_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n66_lit_string_α
#=======================================================================================================================
#     DEFINE('RSUM(N)')                   :(RSUM_END)
#     PAT = BREAK(',') . WORD ','
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_call_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd176:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd176]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx175_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_call_α
.Lx175_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_assign_α
n67_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_call_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 32
                                                                                        jmp   n69_call_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd179:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd179]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx178_240
                        add              rsp, 16
                                                                                        jmp   n71_lit_integer_α
.Lx178_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n70_assign_α
n69_call_β:
                        add              rsp, 16
                                                                                        jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 16
                                                                                        jmp   n71_lit_integer_α
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_assign_α
.Lx181_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 16
                                                                                        jmp   n73_lit_integer_α
#=======================================================================================================================
# OUTER   T = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_call_α
.Lx183_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd185:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd185]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx184_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n76_lit_string_α
.Lx184_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_assign_α
n74_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 32
                                                                                        jmp   n76_lit_string_α
#=======================================================================================================================
#     DATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_assign_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 16
                                                                                        jmp   n78_lit_integer_α
#=======================================================================================================================
#     IDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_assign_α
.Lx189_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 16
                                                                                        jmp   n80_var_α
#=======================================================================================================================
# PARSE   DATA PAT =                     :F(COMPUTE)
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n81_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n81_match_head_α:
                        mov              qword ptr [rbp + 736], r13
                        mov              qword ptr [rbp + 744], r14
                        mov              qword ptr [rbp + 752], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 760], rax
                        mov              qword ptr [rbp + 728], rbp
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 704], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 696], rax
                        mov              dword ptr [rbp + 688], 0
.Lx193_0:
                        mov              r14d, dword ptr [rbp + 688]
                                                                                        jmp   n82_match_patref_α
n81_match_head_β:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, r15d
                                                                                        jg    .Lx193_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx193_1
                                                                                        jmp   .Lx193_0
.Lx193_1:
                        mov              rax, qword ptr [rbp + 696]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 704]
                        mov              r10, qword ptr [1879048192]
.Lx193_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx193_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 736]
                        mov              r14, qword ptr [rbp + 744]
                        mov              r15, qword ptr [rbp + 752]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 728]
                                                                                        jmp   n97_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx194_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx194_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx194_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx194_10
.Lx194_9:
                        xor              eax, eax
.Lx194_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx194_11:
                        test             rax, rax
                                                                                        jz    .Lx194_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx194_4]
                        lea              rdx, [rip + .Lx194_5]
                                                                                        jmp   rax
.Lx194_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 688], eax
                                                                                        jmp   n83_match_release_α
.Lx194_5:
                                                                                        jmp   n81_match_head_β
.Lx194_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx194_2:
                        test             rax, rax
                                                                                        je    .Lx194_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx194_7]
                        lea              rdx, [rip + .Lx194_8]
                                                                                        jmp   rax
.Lx194_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx194_2
.Lx194_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx194_2
.Lx194_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n81_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx194_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n83_match_release_α
.Lx194_6:
                        add              rsp, 16
                                                                                        jmp   n81_match_head_β
n82_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n83_match_release_α:
                        mov              rax, qword ptr [rbp + 696]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rbp + 712], r14
                        mov              rsp, qword ptr [rbp + 704]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx196_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx196_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx196_1:
                        test             rax, rax
                                                                                        je    .Lx196_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx196_3]
                        lea              rdx, [rip + .Lx196_4]
                                                                                        jmp   rax
.Lx196_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx196_1
.Lx196_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx196_1
.Lx196_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx196_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx196_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 736]
                        mov              r14, qword ptr [rbp + 744]
                        mov              r15, qword ptr [rbp + 752]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rsp + 784], 1
                        mov              dword ptr [rsp + 788], 0
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n85_match_replace_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n85_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              rsi, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              ecx, dword ptr [rbp + 688]
                        mov              r8, qword ptr [rbp + 712]
                        lea              r9, [rbp + 784]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx199_1
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "DATA"
.Lx199_1:
                        mov              rbp, qword ptr [rbp + 728]
                                                                                        jmp   n86_var_α
#=======================================================================================================================
#     IDX = IDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_binop_α
.Lx201_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx202_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n90_var_α
.Lx202_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 48
                                                                                        jmp   n90_var_α
#=======================================================================================================================
#     T<IDX> = WORD + 0                  :(PARSE)
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n92_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n92_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx206_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n80_var_α
.Lx206_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n95_binop_α
.Lx208_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx209_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n80_var_α
.Lx209_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n96_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx210_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n80_var_α
.Lx210_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 112
                                                                                        jmp   n80_var_α
#=======================================================================================================================
# COMPUTE TOTAL = 0
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_assign_α
.Lx211_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 16
                                                                                        jmp   n99_lit_integer_α
#=======================================================================================================================
#     I = 0
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n100_assign_α
.Lx213_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 16
                                                                                        jmp   n101_var_α
#=======================================================================================================================
# ADD     I = LT(I, IDX) I + 1          :F(CHECK)
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n103_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx218_1
                        cmp              eax, 6
                                                                                        jne   .Lx218_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx218_0
.Lx218_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n104_coerce_numeric_α
.Lx218_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n104_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n104_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx220_1
                        cmp              eax, 6
                                                                                        jne   .Lx220_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx220_0
.Lx220_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_cmp_test_α
.Lx220_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n105_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n105_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx222_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n118_lit_integer_α
.Lx222_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n107_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n108_binop_α
.Lx224_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx225_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n118_lit_integer_α
.Lx225_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n109_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n110_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 144
                                                                                        jmp   n111_var_α
#=======================================================================================================================
#     TOTAL = TOTAL + T<I>               :(ADD)
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n114_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n114_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx231_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n101_var_α
.Lx231_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx232_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n101_var_α
.Lx232_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n116_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n116_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx233_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n101_var_α
.Lx233_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 96
                                                                                        jmp   n101_var_α
#=======================================================================================================================
# CHECK   CHECK = RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rsp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   n119_call_α
.Lx235_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx237_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx237_5
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx237_6]
                        lea              rdx, [rip + .Lx237_7]
                                                                                        jmp   rax
.Lx237_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx237_2
.Lx237_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx237_2
.Lx237_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx237_20
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx237_21
.Lx237_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        call             rt_arg_stage@PLT
.Lx237_21:
                        mov              rdi, qword ptr [rip + .Lx237_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx237_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx237_3]
                        lea              rdx, [rip + .Lx237_4]
                                                                                        jmp   rax
.Lx237_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx237_2
.Lx237_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx237_2
.Lx237_1:
                        call             rt_faildescr@PLT
.Lx237_2:
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n121_var_α
                                                                                        jmp   n120_assign_α
n119_call_β:
                                                                                        jmp   n121_var_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n121_var_α
#=======================================================================================================================
#     OUTER = LT(OUTER, 50000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n122_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_coerce_numeric_α
.Lx240_0:
                        .quad            50000
#-----------------------------------------------------------------------------------------------------------------------
n123_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx242_1
                        cmp              eax, 6
                                                                                        jne   .Lx242_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx242_0
.Lx242_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n124_coerce_numeric_α
.Lx242_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n124_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n124_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx244_1
                        cmp              eax, 6
                                                                                        jne   .Lx244_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx244_0
.Lx244_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n125_cmp_test_α
.Lx244_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n125_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n125_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx246_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n131_call_α
.Lx246_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n128_binop_α
.Lx248_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx249_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n131_call_α
.Lx249_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n129_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 144
                                                                                        jmp   n73_lit_integer_α
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd253:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd253]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx252_240
                        add              rsp, 16
                                                                                        jmp   n133_lit_string_α
.Lx252_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n132_assign_α
n131_call_β:
                        add              rsp, 16
                                                                                        jmp   n133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        add              rsp, 16
                                                                                        jmp   n133_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " TOTAL
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n134_var_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n135_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx258_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   n137_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n138_var_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx262_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx262_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n143_goto_α:
                                                                                        jmp   n144_var_α
n143_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n146_coerce_numeric_α
.Lx267_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx269_1
                        cmp              eax, 6
                                                                                        jne   .Lx269_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx269_0
.Lx269_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n147_coerce_numeric_α
.Lx269_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n147_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n147_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx271_1
                        cmp              eax, 6
                                                                                        jne   .Lx271_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx271_0
.Lx271_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n148_cmp_test_α
.Lx271_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n148_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n148_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx273_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n152_var_α
.Lx273_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n150_binop_α
.Lx274_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n159_save_restore_α
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n154_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n155_binop_α
.Lx279_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx280_0
                        mov              rax, qword ptr [rsp + 440]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 416], 6
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n156_call_α
.Lx280_0:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n159_save_restore_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n156_call_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx282_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx282_5
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx282_6]
                        lea              rdx, [rip + .Lx282_7]
                                                                                        jmp   rax
.Lx282_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx282_20
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx282_21
.Lx282_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        call             rt_arg_stage@PLT
.Lx282_21:
                        mov              rdi, qword ptr [rip + .Lx282_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx282_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx282_3]
                        lea              rdx, [rip + .Lx282_4]
                                                                                        jmp   rax
.Lx282_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_1:
                        call             rt_faildescr@PLT
.Lx282_2:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n159_save_restore_α
                                                                                        jmp   n157_binop_α
n156_call_β:
                                                                                        jmp   n159_save_restore_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx283_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx283_0
                        mov              rax, qword ptr [rsp + 360]
                        mov              rcx, qword ptr [rsp + 376]
                        add              rax, rcx
                        mov              qword ptr [rsp + 336], 6
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n158_assign_α
.Lx283_0:
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n159_save_restore_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n159_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n159_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n160_goto_α:
                                                                                        jmp   n66_lit_string_α
n160_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n161_goto_α:
                                                                                        jmp   n73_lit_integer_α
n161_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_goto_α:
                                                                                        jmp   n80_var_α
n162_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n163_goto_α:
                                                                                        jmp   n97_lit_integer_α
n163_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_goto_α:
                                                                                        jmp   n101_var_α
n164_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n165_goto_α:
                                                                                        jmp   n118_lit_integer_α
n165_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        .section         .rodata
.S0:                    .string          "WORD"
.S1:                    .string          "PAT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
