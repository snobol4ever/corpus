                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 256], r8
                        mov              dword ptr [rsp + 248], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n6_match_alternate_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 208
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
                        mov              rax, qword ptr [1879052384]                    # PAT$0$A2
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 208], rax                     # result
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n1_coerce_string_α
n0_var_β:
                        add              rsp, 208
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n1_coerce_string_α:
                        lea              rdi, [rbp + 208]                               # in
                        lea              rsi, [rbp + 192]                               # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n2_var_α
n1_coerce_string_β:
                        add              rsp, 208
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052368]                    # PAT$0$A1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 176], rax                     # result
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n3_coerce_string_α
n2_var_β:
                        add              rsp, 208
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_string_α:
                        lea              rdi, [rbp + 176]                               # in
                        lea              rsi, [rbp + 160]                               # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n4_var_α
n3_coerce_string_β:
                        add              rsp, 208
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052352]                    # PAT$0$A0
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 144], rax                     # result
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n5_coerce_string_α
n4_var_β:
                        add              rsp, 208
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_string_α:
                        lea              rdi, [rbp + 144]                               # in
                        lea              rsi, [rbp + 128]                               # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n6_match_alternate_α
n5_coerce_string_β:
                        add              rsp, 208
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx24_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n8_match_span_α
.Lx24_21:
                        lea              rax, [rip + .Lx24_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n7_match_span_α
n6_match_alternate_s0:
                        lea              rax, [rip + .Lx24_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_match_alternate_as
n6_match_alternate_s1:
                        lea              rax, [rip + .Lx24_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_match_alternate_as
.Lx24_40:
                                                                                        jmp   n10_match_fence1_β
.Lx24_41:
                                                                                        jmp   n7_match_span_β
n6_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n6_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n6_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx24_19:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_match_span_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 200]
                        mov              r9d, dword ptr [rbp + 196]
.Lx26_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx26_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx26_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx26_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx26_3
                        add              edx, 1
                                                                                        jmp   .Lx26_2
.Lx26_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx26_0
.Lx26_1:
                        mov              eax, dword ptr [rsp + 0]
                        test             eax, eax
                                                                                        jg    .Lx26_240
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
.Lx26_240:
                        mov              edx, r14d
                        mov              dword ptr [rsp + 4], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n6_match_alternate_s1
n7_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_span_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 168]
                        mov              r9d, dword ptr [rbp + 164]
.Lx28_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx28_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx28_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx28_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx28_3
                        add              edx, 1
                                                                                        jmp   .Lx28_2
.Lx28_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx28_0
.Lx28_1:
                        mov              eax, dword ptr [rsp + 0]
                        test             eax, eax
                                                                                        jg    .Lx28_240
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
.Lx28_240:
                        mov              edx, r14d
                        mov              dword ptr [rsp + 4], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n9_match_lit_α
n8_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n8_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                                                                                        jne   n8_match_span_β
                        add              r14d, 1
                                                                                        jmp   n10_match_fence1_α
n9_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n8_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_fence1_α:
                        mov              qword ptr [rbp + 48], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n11_match_alternate_α
n10_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n6_match_alternate_s0
n10_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n10_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n9_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:
                        mov              dword ptr [rbp + 64], r14d
                        lea              rax, [rip + .Lx34_21]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n13_match_span_α
.Lx34_21:
                        lea              rax, [rip + .Lx34_19]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n12_match_lit_α
n11_match_alternate_s0:
                        lea              rax, [rip + .Lx34_40]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n11_match_alternate_as
n11_match_alternate_s1:
                        lea              rax, [rip + .Lx34_41]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n11_match_alternate_as
.Lx34_40:
                                                                                        jmp   n13_match_span_β
.Lx34_41:
                                                                                        jmp   n12_match_lit_β
n11_match_alternate_as:
                                                                                        jmp   n10_match_fence1_as
n11_match_alternate_β:
                        mov              rax, qword ptr [rbp + 72]
                                                                                        jmp   rax
n11_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 80]
                                                                                        jmp   rax
.Lx34_19:
                                                                                        jmp   n10_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                                                                                        jmp   n11_match_alternate_s1
n12_match_lit_β:
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_span_α:
                        mov              dword ptr [rbp + 96], 0
                        mov              r8, qword ptr [rbp + 136]
                        mov              r9d, dword ptr [rbp + 132]
.Lx38_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 96]
                        cmp              eax, r15d
                                                                                        jge   .Lx38_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx38_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx38_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx38_3
                        add              edx, 1
                                                                                        jmp   .Lx38_2
.Lx38_3:
                        add              dword ptr [rbp + 96], 1
                                                                                        jmp   .Lx38_0
.Lx38_1:
                        mov              eax, dword ptr [rbp + 96]
                        test             eax, eax
                                                                                        jle   n11_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 100], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n11_match_alternate_s0
n13_match_span_β:
                        mov              r14d, dword ptr [rbp + 100]
                                                                                        jmp   n11_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 256], 1
                                                                                        jne   .Lx39_0
                        mov              ecx, dword ptr [rbp + 248]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx39_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 256], 1
                                                                                        jne   .Lx40_0
                        mov              eax, dword ptr [rbp + 248]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx40_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx40_0
                        mov              dword ptr [rbp + 248], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx40_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 280]
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
                        mov              esi, 240
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
.Lgvan0:                .string          "digits"
.Lgvan1:                .string          "Real"
.Lgvan2:                .string          "X"
.Lgvan3:                .string          "N"
.Lgvan4:                .string          "PAT$0$A0"
.Lgvan5:                .string          "PAT$0$A1"
.Lgvan6:                .string          "PAT$0$A2"
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
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:
                                                                                        jmp   n42_lit_string_α
n41_statement_begin_β:
                                                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # digits
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n45_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:
                                                                                        jmp   n46_lit_string_α
n45_statement_begin_β:
                                                                                        jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_lit_integer_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_call_α
n47_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n50_statement_begin_α
.Lx89_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:
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
.Lrkfnzd91:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd91]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx90_240
                        add              rsp, 16
                                                                                        jmp   n47_lit_integer_β
.Lx90_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_statement_end_α
n48_call_β:
                        add              rsp, 16
                                                                                        jmp   n47_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n50_statement_begin_α
#=======================================================================================================================
#         Real = SPAN(digits) '.' FENCE(SPAN(digits) | '')
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:
                                                                                        jmp   n51_var_α
n50_statement_begin_β:
                                                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # PAT$0$A2
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n53_var_α
n52_assign_β:
                        add              rsp, 16
                                                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_assign_α
n53_var_β:
                        add              rsp, 16
                                                                                        jmp   n52_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # PAT$0$A1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n55_var_α
n54_assign_β:
                                                                                        jmp   n53_var_β
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_assign_α
n55_var_β:
                        add              rsp, 16
                                                                                        jmp   n54_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # PAT$0$A0
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n57_lit_string_α
n56_assign_β:
                                                                                        jmp   n55_var_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_call_α
n57_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n56_assign_β
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd104:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd104]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx103_240
                        add              rsp, 16
                                                                                        jmp   n57_lit_string_β
.Lx103_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_assign_α
n58_call_β:
                        add              rsp, 16
                                                                                        jmp   n57_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # Real
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n61_statement_begin_α
#=======================================================================================================================
#         X = '3.14rest'
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:
                                                                                        jmp   n62_lit_string_α
n61_statement_begin_β:
                                                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_assign_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "3.14rest"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # X
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n65_statement_begin_α
#=======================================================================================================================
#         X  FENCE(Real) . N
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_var_α
n65_statement_begin_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # X
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # Real
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_assign_α
n67_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx118_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n69_match_begin_α
n68_assign_β:
                                                                                        jmp   n67_var_β
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n69_match_begin_α:
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
                        mov              rdi, qword ptr [rsp + 432]                     # var
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rbp + 320], r13                     # outer_Σ
                        mov              qword ptr [rbp + 328], r14                     # outer_δ
                        mov              qword ptr [rbp + 336], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 344], rax                     # cap_gen
                        mov              qword ptr [rbp + 312], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 288], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 272], 0                       # start_δ
.Lx120_0:
                        mov              r14d, dword ptr [rbp + 272]
                                                                                        jmp   n70_match_assign_save_α
n69_match_begin_β:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, r15d
                                                                                        jg    .Lx120_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx120_1
                                                                                        jmp   .Lx120_0
.Lx120_1:
n69_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 288]
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 312]                     # old_rbp
                        add              rsp, 416
                                                                                        jmp   n68_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n71_match_fence1_α
n70_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n69_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_fence1_α:
                        mov              qword ptr [rbp + 400], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n75_match_defer_α
n71_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 400]
                                                                                        jmp   n72_match_assign_cond_α
n71_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n71_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 400]
                                                                                        jmp   n70_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n72_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n73_match_end_α
n72_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n71_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_end_α:
                        mov              r10, r12
.Lx128_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx128_9
                        mov              rsp, qword ptr [rbp + 288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx128_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx128_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx128_1:
                        test             rax, rax
                                                                                        je    .Lx128_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx128_3]
                        lea              rdx, [rip + .Lx128_4]
                                                                                        jmp   rax
.Lx128_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx128_1
.Lx128_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx128_1
.Lx128_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 312]                     # old_rbp
                                                                                        jmp   n74_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:
                        add              rsp, 464
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_match_defer_α:
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx131_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx131_4]
                        lea              rdx, [rip + .Lx131_5]
                                                                                        jmp   rax
.Lx131_4:
                                                                                        jmp   n71_match_fence1_as
.Lx131_5:
                                                                                        jmp   n71_match_fence1_af
.Lx131_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx131_2:
                        test             rax, rax
                                                                                        je    .Lx131_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx131_7]
                        lea              rdx, [rip + .Lx131_8]
                                                                                        jmp   rax
.Lx131_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n71_match_fence1_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx131_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n71_match_fence1_as
.Lx131_6:
                        add              rsp, 16
                                                                                        jmp   n71_match_fence1_af
n75_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_var_α
n76_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx135_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_statement_end_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
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
.S0:                    .string          "N"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
