                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "digits"
.Lgvan1:                .string          "X"
.Lgvan2:                .string          "N"
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
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 424
                        mov              rdi, rsp
                        mov              ecx, 424
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_lit_string_α
n1_assign_β:
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rsp + 96], 1
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n3_lit_integer_α
n2_lit_string_β:
                                                                                        jmp   n5_lit_string_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 112], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n4_call_α
n3_lit_integer_β:
                                                                                        jmp   n5_lit_string_α
.Lx22_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn24:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn24]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n5_lit_string_α
n4_call_β:
                                                                                        jmp   n5_lit_string_α
#=======================================================================================================================
#         X = '123abc'
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
n5_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n7_var_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "123abc"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n7_var_α
n6_assign_β:
                                                                                        jmp   n7_var_α
#=======================================================================================================================
#         X  FENCE(SPAN(digits) | '') . N
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n8_var_α
n7_var_β:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n10_op73_α
n8_var_β:
                                                                                        jmp   n9_var_α
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_assign_α
n9_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_op73_α:
                        lea              rdi, [rsp + 368]
                        lea              rsi, [rsp + 352]
                        mov              rdx, 12320956
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n12_match_head_α
n10_op73_β:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx32_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n11_assign_β:
                                                                                        jmp   main_γ
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_head_α:
                        mov              qword ptr [rsp + 208], r13
                        mov              qword ptr [rsp + 216], r14
                        mov              qword ptr [rsp + 224], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 232], rax
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx34_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n13_match_assign_save_α
n12_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx34_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx34_1
                                                                                        jmp   .Lx34_0
.Lx34_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx34_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx34_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 208]
                        mov              r14, qword ptr [rsp + 216]
                        mov              r15, qword ptr [rsp + 224]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n14_match_alternate_α
n13_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n12_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_alternate_α:
                        mov              dword ptr [rsp + 352], r14d
                        lea              rax, [rip + .Lx38_21]
                        mov              qword ptr [rsp + 368], rax
                                                                                        jmp   n16_match_span_α
.Lx38_21:
                        lea              rax, [rip + .Lx38_19]
                        mov              qword ptr [rsp + 368], rax
                                                                                        jmp   n17_match_lit_α
n14_match_alternate_s0:
                        lea              rax, [rip + .Lx38_40]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n14_match_alternate_as
n14_match_alternate_s1:
                        lea              rax, [rip + .Lx38_41]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n14_match_alternate_as
.Lx38_40:
                                                                                        jmp   n16_match_span_β
.Lx38_41:
                                                                                        jmp   n17_match_lit_β
n14_match_alternate_as:
                                                                                        jmp   n15_match_assign_cond_α
n14_match_alternate_β:
                        mov              rax, qword ptr [rsp + 360]
                                                                                        jmp   rax
n14_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 352]
                        mov              rax, qword ptr [rsp + 368]
                                                                                        jmp   rax
.Lx38_19:
                                                                                        jmp   n13_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_cond_α:
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
                                                                                        jmp   n18_match_release_α
n15_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n14_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_span_α:
                        mov              dword ptr [rsp + 384], 0
                        mov              r8, qword ptr [rsp + 408]
                        mov              r9d, dword ptr [rsp + 404]
.Lx42_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 384]
                        cmp              eax, r15d
                                                                                        jge   .Lx42_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx42_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx42_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx42_3
                        add              edx, 1
                                                                                        jmp   .Lx42_2
.Lx42_3:
                        add              dword ptr [rsp + 384], 1
                                                                                        jmp   .Lx42_0
.Lx42_1:
                        mov              eax, dword ptr [rsp + 384]
                        test             eax, eax
                                                                                        jle   n14_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rsp + 388], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n14_match_alternate_s0
n16_match_span_β:
                        mov              r14d, dword ptr [rsp + 388]
                                                                                        jmp   n14_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                                                                                        jmp   n14_match_alternate_s1
n17_match_lit_β:
                                                                                        jmp   n14_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx46_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx46_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx46_1:
                        test             rax, rax
                                                                                        je    .Lx46_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx46_3]
                        lea              rdx, [rip + .Lx46_4]
                                                                                        jmp   rax
.Lx46_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx46_1
.Lx46_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx46_1
.Lx46_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx46_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx46_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 208]
                        mov              r14, qword ptr [rsp + 216]
                        mov              r15, qword ptr [rsp + 224]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 424
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 424
                        ret
                        .section         .rodata
.S0:                    .string          "N"
                        .text
                        .section         .note.GNU-stack,"",@progbits
