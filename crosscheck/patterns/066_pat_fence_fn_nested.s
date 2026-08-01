                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 272], r8
                        mov              dword ptr [rsp + 264], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n6_match_alternate_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 0], 0
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
                        mov              rax, qword ptr [1879052384]                    # PAT$0$A2
                        mov              rdx, qword ptr [1879052392]                    # PAT$0$A2
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n1_coerce_string_α
n0_var_β:
                        add              rsp, 224
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n1_coerce_string_α:
                        lea              rdi, [rbp + 224]
                        lea              rsi, [rbp + 208]
                        mov              rdx, 12320956
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n2_var_α
n1_coerce_string_β:
                        add              rsp, 224
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052368]                    # PAT$0$A1
                        mov              rdx, qword ptr [1879052376]                    # PAT$0$A1
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n3_coerce_string_α
n2_var_β:
                        add              rsp, 224
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_string_α:
                        lea              rdi, [rbp + 192]
                        lea              rsi, [rbp + 176]
                        mov              rdx, 12320956
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n4_var_α
n3_coerce_string_β:
                        add              rsp, 224
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052352]                    # PAT$0$A0
                        mov              rdx, qword ptr [1879052360]                    # PAT$0$A0
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n5_coerce_string_α
n4_var_β:
                        add              rsp, 224
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_string_α:
                        lea              rdi, [rbp + 160]
                        lea              rsi, [rbp + 144]
                        mov              rdx, 12320956
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n6_match_alternate_α
n5_coerce_string_β:
                        add              rsp, 224
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx25_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n8_match_sequence_α
.Lx25_21:
                        lea              rax, [rip + .Lx25_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n7_match_span_α
n6_match_alternate_s0:
                        lea              rax, [rip + .Lx25_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_match_alternate_as
n6_match_alternate_s1:
                        lea              rax, [rip + .Lx25_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_match_alternate_as
.Lx25_40:
                                                                                        jmp   n9_match_fence1_β
.Lx25_41:
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
.Lx25_19:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_match_span_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 216]
                        mov              r9d, dword ptr [rbp + 212]
.Lx27_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx27_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx27_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx27_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx27_3
                        add              edx, 1
                                                                                        jmp   .Lx27_2
.Lx27_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx27_0
.Lx27_1:
                        mov              eax, dword ptr [rsp + 0]
                        test             eax, eax
                                                                                        jg    .Lx27_240
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
.Lx27_240:
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
n8_match_sequence_α:
                                                                                        jmp   n14_match_span_α
n8_match_sequence_as:
                                                                                        jmp   n9_match_fence1_α
n8_match_sequence_β:
                                                                                        jmp   n13_match_lit_β
n8_match_sequence_af:
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_fence1_α:
                        mov              qword ptr [rbp + 48], rsp
                                                                                        jmp   n10_match_alternate_α
n9_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 48], rbp
                                                                                        jmp   n6_match_alternate_s0
n9_match_fence1_β:
n9_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n10_match_alternate_α:
                        mov              dword ptr [rbp + 64], r14d
                        lea              rax, [rip + .Lx33_21]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n12_match_span_α
.Lx33_21:
                        lea              rax, [rip + .Lx33_19]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n11_match_lit_α
n10_match_alternate_s0:
                        lea              rax, [rip + .Lx33_40]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n10_match_alternate_as
n10_match_alternate_s1:
                        lea              rax, [rip + .Lx33_41]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n10_match_alternate_as
.Lx33_40:
                                                                                        jmp   n12_match_span_β
.Lx33_41:
                                                                                        jmp   n11_match_lit_β
n10_match_alternate_as:
                                                                                        jmp   n9_match_fence1_as
n10_match_alternate_β:
                        mov              rax, qword ptr [rbp + 72]
                                                                                        jmp   rax
n10_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 80]
                                                                                        jmp   rax
.Lx33_19:
                                                                                        jmp   n9_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:
                                                                                        jmp   n10_match_alternate_s1
n11_match_lit_β:
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_span_α:
                        mov              dword ptr [rbp + 96], 0
                        mov              r8, qword ptr [rbp + 152]
                        mov              r9d, dword ptr [rbp + 148]
.Lx37_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 96]
                        cmp              eax, r15d
                                                                                        jge   .Lx37_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx37_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx37_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx37_3
                        add              edx, 1
                                                                                        jmp   .Lx37_2
.Lx37_3:
                        add              dword ptr [rbp + 96], 1
                                                                                        jmp   .Lx37_0
.Lx37_1:
                        mov              eax, dword ptr [rbp + 96]
                        test             eax, eax
                                                                                        jle   n10_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 100], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n10_match_alternate_s0
n12_match_span_β:
                        mov              r14d, dword ptr [rbp + 100]
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n14_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                                                                                        jne   n14_match_span_β
                        add              r14d, 1
                                                                                        jmp   n9_match_fence1_α
n13_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n14_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_span_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rbp + 184]
                        mov              r9d, dword ptr [rbp + 180]
.Lx41_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx41_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx41_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx41_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx41_3
                        add              edx, 1
                                                                                        jmp   .Lx41_2
.Lx41_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx41_0
.Lx41_1:
                        mov              eax, dword ptr [rsp + 0]
                        test             eax, eax
                                                                                        jg    .Lx41_240
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
.Lx41_240:
                        mov              edx, r14d
                        mov              dword ptr [rsp + 4], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n13_match_lit_α
n14_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 264]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 264]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 264], eax
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
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296]
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
                        mov              esi, 256
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
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # digits
                        mov              qword ptr [1879052296], rdx                    # digits
                        add              rsp, 16
                                                                                        jmp   n44_lit_string_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_lit_integer_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_call_α
.Lx69_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
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
.Lrkfnzd71:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd71]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx70_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n47_var_α
.Lx70_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n47_var_α
n46_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n47_var_α
#=======================================================================================================================
#         Real = SPAN(digits) '.' FENCE(SPAN(digits) | '')
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]                    # digits
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # PAT$0$A2
                        mov              qword ptr [1879052392], rdx                    # PAT$0$A2
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]                    # digits
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # PAT$0$A1
                        mov              qword ptr [1879052376], rdx                    # PAT$0$A1
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]                    # digits
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # PAT$0$A0
                        mov              qword ptr [1879052360], rdx                    # PAT$0$A0
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_call_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd80:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd80]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx79_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n56_lit_string_α
.Lx79_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
n54_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # Real
                        mov              qword ptr [1879052312], rdx                    # Real
                        add              rsp, 80
                                                                                        jmp   n56_lit_string_α
#=======================================================================================================================
#         X = '3.14rest'
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_assign_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "3.14rest"
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # X
                        mov              qword ptr [1879052328], rdx                    # X
                        add              rsp, 16
                                                                                        jmp   n58_var_α
#=======================================================================================================================
#         X  FENCE(Real) . N
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], 0
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # X
                        mov              rdx, qword ptr [1879052328]                    # X
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n59_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 56], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
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
                        mov              qword ptr [rbp + 32], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax
                        mov              dword ptr [rbp + 16], 0
.Lx86_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n60_match_assign_save_α
n59_match_head_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx86_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx86_1
                                                                                        jmp   .Lx86_0
.Lx86_1:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx86_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 176
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_match_assign_save_α:
                        lea              rdi, [rbp + 128]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n61_match_patref_α
n60_match_assign_save_β:
                        lea              rdi, [rbp + 128]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n59_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_11
                        mov              rax, qword ptr [1879052304]                    # Real
                        mov              rdx, qword ptr [1879052312]                    # Real
                        cmp              eax, 3
                                                                                        jne   .Lx89_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx89_10
.Lx89_9:
                        xor              eax, eax
.Lx89_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx89_11:
                        test             rax, rax
                                                                                        jz    .Lx89_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx89_4]
                        lea              rdx, [rip + .Lx89_5]
                                                                                        jmp   rax
.Lx89_4:
                                                                                        jmp   n62_match_assign_cond_α
.Lx89_5:
                                                                                        jmp   n60_match_assign_save_β
.Lx89_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx89_2:
                        test             rax, rax
                                                                                        je    .Lx89_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx89_7]
                        lea              rdx, [rip + .Lx89_8]
                                                                                        jmp   rax
.Lx89_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx89_2
.Lx89_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx89_2
.Lx89_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n60_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx89_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n62_match_assign_cond_α
.Lx89_6:
                        add              rsp, 16
                                                                                        jmp   n60_match_assign_save_β
n61_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n62_match_assign_cond_α:
                        lea              rdi, [rbp + 128]
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
                                                                                        jmp   n63_match_release_α
n62_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n61_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_release_α:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx93_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx93_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx93_1:
                        test             rax, rax
                                                                                        je    .Lx93_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4]
                                                                                        jmp   rax
.Lx93_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx93_1
.Lx93_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx93_1
.Lx93_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx93_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx93_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 176
                                                                                        jmp   n64_var_α
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "OUTPUT"
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
.S0:                    .string          "Real"
.S1:                    .string          "N"
                        .text
                        .section         .note.GNU-stack,"",@progbits
