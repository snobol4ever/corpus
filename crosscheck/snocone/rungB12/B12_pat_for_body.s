                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "words"
.Lgvan1:                .string          "i"
.Lgvan2:                .string          "w"
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
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 16], 1
                        mov              dword ptr [rsp + 20], 11
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                                                                                        jmp   n2_lit_integer_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "cat dog fox"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_lit_integer_α
n1_assign_β:
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 336], 6
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n3_assign_α
n2_lit_integer_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
.Lx25_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n4_var_α
n3_assign_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n5_lit_integer_α
n4_var_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rsp + 64], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n6_coerce_numeric_α
n5_lit_integer_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
.Lx28_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 7
                                                                                        je    .Lx30_1
                        cmp              eax, 6
                                                                                        jne   .Lx30_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx30_0
.Lx30_1:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n7_coerce_numeric_α
.Lx30_0:
                        lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 48]
                        mov              rcx, 118
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_coerce_numeric_α
n6_coerce_numeric_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx32_1
                        cmp              eax, 6
                                                                                        jne   .Lx32_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 6
                                                                                        jne   .Lx32_0
.Lx32_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n8_cmp_test_α
.Lx32_0:
                        lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 80]
                        lea              rdx, [rsp + 32]
                        mov              rcx, 119
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_cmp_test_α
n7_coerce_numeric_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_cmp_test_α:
                        lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 32]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx34_240
                        add              rsp, 352
                                                                                        jmp   main_γ
.Lx34_240:
                                                                                        jmp   n9_var_α
n8_cmp_test_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_match_head_α
n9_var_β:
                        add              rsp, 16
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 224], r13
                        mov              qword ptr [rsp + 232], r14
                        mov              qword ptr [rsp + 240], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 248], rax
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx37_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n11_match_sequence_α
n10_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx37_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx37_1
                                                                                        jmp   .Lx37_0
.Lx37_1:
                        mov              r10, qword ptr [1879048192]
.Lx37_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 224]
                        mov              r14, qword ptr [rsp + 232]
                        mov              r15, qword ptr [rsp + 240]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 248]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_match_sequence_α:
                                                                                        jmp   n16_match_assign_save_α
n11_match_sequence_as:
                                                                                        jmp   n12_match_release_α
n11_match_sequence_β:
                                                                                        jmp   n15_match_len_β
n11_match_sequence_af:
                                                                                        jmp   n10_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx41_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx41_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx41_1:
                        test             rax, rax
                                                                                        je    .Lx41_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx41_3]
                        lea              rdx, [rip + .Lx41_4]
                                                                                        jmp   rax
.Lx41_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx41_1
.Lx41_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx41_1
.Lx41_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx41_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 224]
                        mov              r14, qword ptr [rsp + 232]
                        mov              r15, qword ptr [rsp + 240]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 248]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n14_assign_α
n13_var_β:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              rdi, qword ptr [rip + .Lx43_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n19_var_α
n14_assign_β:
                                                                                        jmp   n19_var_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n18_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n12_match_release_α
n15_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n18_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n17_match_break_α
n16_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n10_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx48_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_match_head_β
.Lx48_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_match_head_β
.Lx48_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_match_head_β
.Lx48_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx48_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_match_head_β
.Lx48_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx48_1
                        add              ecx, 1
                                                                                        jmp   .Lx48_0
.Lx48_1:
                        mov              dword ptr [rsp + 64], r14d
                        mov              r14d, ecx
                                                                                        jmp   n18_match_assign_cond_α
n17_match_break_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_cond_α:
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
                                                                                        jmp   n15_match_len_α
n18_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n17_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n20_lit_integer_α
n19_var_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n21_binop_α
n20_lit_integer_β:
                        add              rsp, 352
                                                                                        jmp   main_γ
.Lx52_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx53_0
                        mov              rax, qword ptr [rsp + 120]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 96], 6
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n22_assign_α
.Lx53_0:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx53_240
                        add              rsp, 384
                                                                                        jmp   main_γ
.Lx53_240:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n22_assign_α
n21_binop_β:
                        add              rsp, 384
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n4_var_α
n22_assign_β:
                        add              rsp, 352
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
.S0:                    .string          "w"
                        .text
                        .section         .note.GNU-stack,"",@progbits
