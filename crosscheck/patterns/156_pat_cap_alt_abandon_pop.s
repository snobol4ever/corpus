                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "V1"
.Lgvan1:                .string          "V2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
#  'ab' ? ('ab' . V1 | 'a' . V2) 'b'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 272
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                        add              rsp, 16
                        add              rsp, 272
                                                                                        jmp   n4_lit_string_α
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 64], r13
                        mov              qword ptr [rsp + 72], r14
                        mov              qword ptr [rsp + 80], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax
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
.Lx22_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx22_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx22_1
                                                                                        jmp   .Lx22_0
.Lx22_1:
                        mov              r10, qword ptr [1879048192]
.Lx22_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx22_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 272
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n13_match_alternate_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n12_match_lit_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx26_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx26_9
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
.Lx26_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx26_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx26_1:
                        test             rax, rax
                                                                                        je    .Lx26_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx26_3]
                        lea              rdx, [rip + .Lx26_4]
                                                                                        jmp   rax
.Lx26_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx26_1
.Lx26_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx26_1
.Lx26_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx26_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx26_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 272
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
#  OUTPUT = 'V1=' V1 ' V2=' V2
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_var_α
n4_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "V1="
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_binop_α
n5_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_lit_string_α
n6_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_binop_α
n7_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          " V2="
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_var_α
n8_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_binop_α
n9_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_assign_α
n10_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   main_γ
n11_assign_β:
                        add              rsp, 112
                                                                                        jmp   main_γ
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n13_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n13_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   n3_match_release_α
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:
                        mov              dword ptr [rsp + 144], r14d
                        lea              rax, [rip + .Lx38_21]
                        mov              qword ptr [rsp + 160], rax
                                                                                        jmp   n17_match_assign_save_α
.Lx38_21:
                        lea              rax, [rip + .Lx38_19]
                        mov              qword ptr [rsp + 160], rax
                                                                                        jmp   n14_match_assign_save_α
n13_match_alternate_s0:
                        lea              rax, [rip + .Lx38_40]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n13_match_alternate_as
n13_match_alternate_s1:
                        lea              rax, [rip + .Lx38_41]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n13_match_alternate_as
.Lx38_40:
                                                                                        jmp   n19_match_assign_cond_β
.Lx38_41:
                                                                                        jmp   n16_match_assign_cond_β
n13_match_alternate_as:
                                                                                        jmp   n12_match_lit_α
n13_match_alternate_β:
                        mov              rax, qword ptr [rsp + 152]
                                                                                        jmp   rax
n13_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 144]
                        mov              rax, qword ptr [rsp + 160]
                                                                                        jmp   rax
.Lx38_19:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_assign_save_α:
                        lea              rdi, [rsp + 272]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n15_match_lit_α
n14_match_assign_save_β:
                        lea              rdi, [rsp + 272]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n14_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n14_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n16_match_assign_cond_α
n15_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n14_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_cond_α:
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
                                                                                        jmp   n13_match_alternate_s1
n16_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n15_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        lea              rdi, [rsp + 208]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n18_match_lit_α
n17_match_assign_save_β:
                        lea              rdi, [rsp + 208]
                        call             rt_cap_pop@PLT
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n17_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n17_match_assign_save_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n17_match_assign_save_β
                        add              r14d, 2
                                                                                        jmp   n19_match_assign_cond_α
n18_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n17_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
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
                                                                                        jmp   n13_match_alternate_s0
n19_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n18_match_lit_β
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
.S0:                    .string          "V2"
.S1:                    .string          "V1"
                        .text
                        .section         .note.GNU-stack,"",@progbits
