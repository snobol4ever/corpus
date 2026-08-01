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
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 40], eax
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
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n3_match_sequence_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n10_match_assign_save_α
n3_match_sequence_as:
                                                                                        jmp   proc_PAT$1_γ
n3_match_sequence_β:
                                                                                        jmp   n4_match_arbno_β
n3_match_sequence_af:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_arbno_α:
                        mov              dword ptr [rbp + 112], r14d
                        mov              dword ptr [rbp + 116], r14d
                        mov              dword ptr [rbp + 120], 0
                        mov              qword ptr [rbp + 136], rsp
                        mov              qword ptr [rbp + 128], 0
                                                                                        jmp   proc_PAT$1_γ
n4_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 116]
                        mov              rax, qword ptr [rbp + 128]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rbp + 128], rsp
                        mov              rbp, rsp
                        add              rbp, -120
                                                                                        jmp   n5_match_fence1_α
n4_match_arbno_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              r14d, eax
                                                                                        je    n8_match_assign_cond_β
                        mov              rbp, qword ptr [rbp + 120]
                        mov              eax, dword ptr [rbp + 120]
                        add              eax, 1
                        mov              dword ptr [rbp + 120], eax
                        mov              dword ptr [rbp + 116], r14d
                                                                                        jmp   proc_PAT$1_γ
n4_match_arbno_af:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 120]
                        test             ecx, ecx
                                                                                        jz    .Lx16_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 120], ecx
                        mov              qword ptr [rbp + 128], rax
                        lea              rbp, [rax + -120]
                                                                                        jmp   n8_match_assign_cond_β
.Lx16_2:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   n12_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_fence1_α:
                        mov              qword ptr [rbp + 224], rsp
                                                                                        jmp   n9_match_lit_α
n5_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 224], rbp
                                                                                        jmp   n6_match_assign_save_α
n5_match_fence1_β:
n5_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n4_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α:
                        lea              rdi, [rbp + 176]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n7_match_patref_α
n6_match_assign_save_β:
                        lea              rdi, [rbp + 176]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n4_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx21_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx21_10
.Lx21_9:
                        xor              eax, eax
.Lx21_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx21_11:
                        test             rax, rax
                                                                                        jz    .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_4]
                        lea              rdx, [rip + .Lx21_5]
                                                                                        jmp   rax
.Lx21_4:
                                                                                        jmp   n8_match_assign_cond_α
.Lx21_5:
                                                                                        jmp   n6_match_assign_save_β
.Lx21_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx21_2:
                        test             rax, rax
                                                                                        je    .Lx21_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_7]
                        lea              rdx, [rip + .Lx21_8]
                                                                                        jmp   rax
.Lx21_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n8_match_assign_cond_α
.Lx21_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_assign_save_β
n7_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_cond_α:
                        lea              rdi, [rbp + 176]
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
                                                                                        jmp   n4_match_arbno_as
n8_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n7_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n5_match_fence1_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n5_match_fence1_af
                        add              r14d, 1
                                                                                        jmp   n5_match_fence1_as
n9_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n5_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_save_α:
                        lea              rdi, [rbp + 64]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n11_match_patref_α
n10_match_assign_save_β:
                        lea              rdi, [rbp + 64]
                        call             rt_cap_pop@PLT
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx28_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx28_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx28_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx28_10
.Lx28_9:
                        xor              eax, eax
.Lx28_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx28_11:
                        test             rax, rax
                                                                                        jz    .Lx28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx28_4]
                        lea              rdx, [rip + .Lx28_5]
                                                                                        jmp   rax
.Lx28_4:
                                                                                        jmp   n12_match_assign_cond_α
.Lx28_5:
                                                                                        jmp   n10_match_assign_save_β
.Lx28_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx28_2:
                        test             rax, rax
                                                                                        je    .Lx28_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx28_7]
                        lea              rdx, [rip + .Lx28_8]
                                                                                        jmp   rax
.Lx28_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx28_2
.Lx28_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx28_2
.Lx28_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n10_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx28_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n12_match_assign_cond_α
.Lx28_6:
                        add              rsp, 16
                                                                                        jmp   n10_match_assign_save_β
n11_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_cond_α:
                        lea              rdi, [rbp + 64]
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S2]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n4_match_arbno_α
n12_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n11_match_patref_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312]
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
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "num"
.Lgvan1:                .string          "expr"
.Lgvan2:                .string          "FIRST"
.Lgvan3:                .string          "LAST"
.Lgvan4:                .string          "s"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         num   = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_call_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd62]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx61_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n34_lit_string_α
.Lx61_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_assign_α
n32_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n34_lit_string_α
#=======================================================================================================================
#         expr  = num . FIRST ARBNO(FENCE('+') num . LAST)
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_call_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd66:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd66]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx65_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n37_lit_string_α
.Lx65_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_assign_α
n35_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n37_lit_string_α
#=======================================================================================================================
#         s     = '1+2+3+4+5'
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "1+2+3+4+5"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 16
                                                                                        jmp   n39_var_α
#=======================================================================================================================
#         s POS(0) expr RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        sub              rsp, 336
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n40_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 224], r13
                        mov              qword ptr [rbp + 232], r14
                        mov              qword ptr [rbp + 240], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 248], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 192], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 184], rax
                        mov              dword ptr [rbp + 176], 0
.Lx72_0:
                        mov              r14d, dword ptr [rbp + 176]
                                                                                        jmp   n41_match_sequence_α
n40_match_head_β:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, r15d
                                                                                        jg    .Lx72_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx72_1
                                                                                        jmp   .Lx72_0
.Lx72_1:
                        mov              rax, qword ptr [rbp + 184]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 192]
                        mov              r10, qword ptr [1879048192]
.Lx72_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]
                        mov              r14, qword ptr [rbp + 232]
                        mov              r15, qword ptr [rbp + 240]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 216]
                        add              rsp, 336
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_match_sequence_α:
                        mov              dword ptr [rbp + 256], r14d
                                                                                        jmp   n54_lit_integer_α
n41_match_sequence_as:
                                                                                        jmp   n42_match_release_α
n41_match_sequence_β:
                                                                                        jmp   n52_match_rpos_β
n41_match_sequence_af:
                                                                                        jmp   n40_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_release_α:
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
.Lx76_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx76_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx76_1:
                        test             rax, rax
                                                                                        je    .Lx76_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx76_3]
                        lea              rdx, [rip + .Lx76_4]
                                                                                        jmp   rax
.Lx76_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx76_1
.Lx76_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx76_1
.Lx76_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx76_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx76_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]
                        mov              r14, qword ptr [rbp + 232]
                        mov              r15, qword ptr [rbp + 240]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 216]
                        add              rsp, 336
                                                                                        jmp   n43_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'first=' FIRST ' last=' LAST                 :(END)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_var_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "first="
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_binop_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          " last="
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx84_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   main_γ
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rsp + 304], 6
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n52_match_rpos_α
n51_lit_integer_β:
                                                                                        jmp   n53_match_patref_β
.Lx85_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n52_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n53_match_patref_β
                                                                                        jmp   n42_match_release_α
n52_match_rpos_β:
                                                                                        jmp   n53_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx87_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx87_10
.Lx87_9:
                        xor              eax, eax
.Lx87_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx87_11:
                        test             rax, rax
                                                                                        jz    .Lx87_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx87_4]
                        lea              rdx, [rip + .Lx87_5]
                                                                                        jmp   rax
.Lx87_4:
                                                                                        jmp   n51_lit_integer_α
.Lx87_5:
                                                                                        jmp   n40_match_head_β
.Lx87_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx87_2:
                        test             rax, rax
                                                                                        je    .Lx87_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx87_7]
                        lea              rdx, [rip + .Lx87_8]
                                                                                        jmp   rax
.Lx87_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx87_2
.Lx87_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx87_2
.Lx87_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n40_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx87_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n51_lit_integer_α
.Lx87_6:
                        add              rsp, 16
                                                                                        jmp   n40_match_head_β
n53_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rsp + 272], 6
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n55_match_pos_α
n54_lit_integer_β:
                                                                                        jmp   n40_match_head_β
.Lx88_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n55_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n40_match_head_β
                                                                                        jmp   n53_match_patref_α
n55_match_pos_β:
                                                                                        jmp   n40_match_head_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_assign_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx91_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_goto_α:
                                                                                        jmp   n43_lit_string_α
n58_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_goto_α:
                                                                                        jmp   n56_lit_string_α
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
.S0:                    .string          "num"
.S1:                    .string          "LAST"
.S2:                    .string          "FIRST"
.S3:                    .string          "expr"
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
