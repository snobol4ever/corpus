                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
.Lgvan1:                .string          "n"
.Lgvan2:                .string          "v"
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
                        sub              rsp, 320
                        mov              qword ptr [rsp + 16], 1
                        mov              dword ptr [rsp + 20], 3
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                                                                                        jmp   n2_lit_integer_α
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "aaa"
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
                        mov              qword ptr [rsp + 32], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n3_assign_α
n2_lit_integer_β:
                                                                                        jmp   n4_var_α
.Lx22_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n4_var_α
n3_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n5_var_α
n4_var_β:
                        add              rsp, 320
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n6_coerce_integer_α
n5_var_β:
                        add              rsp, 320
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_integer_α:
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 208]
                        mov              rdx, 10682530
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n7_match_head_α
n6_coerce_integer_β:
                        add              rsp, 320
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_match_head_α:
                        mov              qword ptr [rsp + 112], r13
                        mov              qword ptr [rsp + 120], r14
                        mov              qword ptr [rsp + 128], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 136], rax
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
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
.Lx29_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n8_match_sequence_α
n7_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx29_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx29_1
                                                                                        jmp   .Lx29_0
.Lx29_1:
                        mov              r10, qword ptr [1879048192]
.Lx29_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx29_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 320
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_match_sequence_α:
                                                                                        jmp   n19_match_pos_α
n8_match_sequence_as:
                                                                                        jmp   n9_match_release_α
n8_match_sequence_β:
                                                                                        jmp   n18_match_assign_cond_β
n8_match_sequence_af:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx33_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_9
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
.Lx33_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx33_1:
                        test             rax, rax
                                                                                        je    .Lx33_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx33_3]
                        lea              rdx, [rip + .Lx33_4]
                                                                                        jmp   rax
.Lx33_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx33_1
.Lx33_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx33_1
.Lx33_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx33_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n11_assign_α
n10_var_β:
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              rdi, qword ptr [rip + .Lx35_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_var_α
n11_assign_β:
                                                                                        jmp   n12_var_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n13_lit_integer_α
n12_var_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n14_binop_α
n13_lit_integer_β:
                                                                                        jmp   n4_var_α
.Lx37_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx38_0
                        mov              rax, qword ptr [rsp + 280]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 256], 6
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n15_assign_α
.Lx38_0:
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx38_240
                        add              rsp, 32
                                                                                        jmp   n4_var_α
.Lx38_240:
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n15_assign_α
n14_binop_β:
                        add              rsp, 32
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n4_var_α
n15_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n17_match_lit_α
n16_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx43_239
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
.Lx43_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        je    .Lx43_240
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
.Lx43_240:
                        add              r14d, 1
                                                                                        jmp   n18_match_assign_cond_α
n17_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n9_match_release_α
n18_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n17_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_pos_α:
                        mov              rax, qword ptr [rsp + 248]
                        cmp              r14d, eax
                                                                                        jne   n7_match_head_β
                                                                                        jmp   n16_match_assign_save_α
n19_match_pos_β:
                                                                                        jmp   n7_match_head_β
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
.S0:                    .string          "v"
                        .text
                        .section         .note.GNU-stack,"",@progbits
