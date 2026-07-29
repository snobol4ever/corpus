                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "V"
.Lgvan1:                .string          "W"
.Lgvan2:                .string          "C"
.Lgvan3:                .string          "N"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
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
                        sub              rsp, 2488
                        mov              rdi, rsp
                        mov              ecx, 2488
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
# 	V = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "q"
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
# 	V = ','
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
n2_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n4_lit_string_α
n3_assign_β:
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
# 	'ab,cd' BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rsp + 240], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n5_var_α
n4_lit_string_β:
                                                                                        jmp   n7_var_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n6_op73_α
n5_var_β:
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op73_α:
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 208]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n8_match_head_α
n6_op73_β:
                                                                                        jmp   n7_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_assign_α
n7_var_β:
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_head_α:
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
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx138_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n11_match_assign_save_α
n8_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx138_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx138_1
                                                                                        jmp   .Lx138_0
.Lx138_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx138_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx138_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx139_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n10_lit_string_α
n9_assign_β:
                                                                                        jmp   n10_lit_string_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	V = 'A'
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n13_match_break_α
n11_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n8_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n14_lit_string_α
n12_assign_β:
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              r8, qword ptr [rsp + 280]
                        mov              r9d, dword ptr [rsp + 276]
.Lx145_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jl    .Lx145_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n8_match_head_β
.Lx145_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx145_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx145_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx145_1
                        add              edx, 1
                                                                                        jmp   .Lx145_2
.Lx145_3:
                        add              dword ptr [rsp + 64], 1
                                                                                        jmp   .Lx145_0
.Lx145_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        mov              dword ptr [rsp + 64], r14d
                        mov              r14d, eax
                                                                                        jmp   n15_match_assign_cond_α
n13_match_break_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n8_match_head_β
#=======================================================================================================================
# 	'EXCEPTIONS ARE AS TRUE AS RULES' BREAKX(V) . OUTPUT 'AS'
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rsp + 496], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n16_var_α
n14_lit_string_β:
                                                                                        jmp   n19_lit_string_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "EXCEPTIONS ARE AS TRUE AS RULES"
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_cond_α:
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
                                                                                        jmp   n17_match_release_α
n15_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n13_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n18_op73_α
n16_var_β:
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx151_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx151_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx151_1:
                        test             rax, rax
                                                                                        je    .Lx151_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx151_3]
                        lea              rdx, [rip + .Lx151_4]
                                                                                        jmp   rax
.Lx151_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx151_1
.Lx151_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx151_1
.Lx151_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx151_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx151_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op73_α:
                        lea              rdi, [rsp + 480]
                        lea              rsi, [rsp + 464]
                        mov              rdx, 4587590
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n20_match_head_α
n18_op73_β:
                                                                                        jmp   n19_lit_string_α
#=======================================================================================================================
# 	C = 'z'
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_assign_α
n19_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n23_lit_string_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n20_match_head_α:
                        mov              qword ptr [rsp + 352], r13
                        mov              qword ptr [rsp + 360], r14
                        mov              qword ptr [rsp + 368], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 376], rax
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
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
.Lx156_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n22_match_sequence_α
n20_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx156_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx156_1
                                                                                        jmp   .Lx156_0
.Lx156_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx156_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx156_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 352]
                        mov              r14, qword ptr [rsp + 360]
                        mov              r15, qword ptr [rsp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n23_lit_string_α
n21_assign_β:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_sequence_α:
                                                                                        jmp   n25_match_assign_save_α
n22_match_sequence_as:
                                                                                        jmp   n24_match_release_α
n22_match_sequence_β:
                                                                                        jmp   n27_match_lit_β
n22_match_sequence_af:
                                                                                        jmp   n20_match_head_β
#=======================================================================================================================
# 	C = 'xa'
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_assign_α
n23_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n30_lit_string_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "xa"
#-----------------------------------------------------------------------------------------------------------------------
n24_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx162_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx162_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx162_1:
                        test             rax, rax
                                                                                        je    .Lx162_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx162_3]
                        lea              rdx, [rip + .Lx162_4]
                                                                                        jmp   rax
.Lx162_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx162_1
.Lx162_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx162_1
.Lx162_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx162_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx162_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 352]
                        mov              r14, qword ptr [rsp + 360]
                        mov              r15, qword ptr [rsp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n29_match_breakx_α
n25_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n20_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
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
                                                                                        jmp   n27_match_lit_α
n26_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n29_match_breakx_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n26_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n26_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 83
                                                                                        jne   n26_match_assign_cond_β
                        add              r14d, 2
                                                                                        jmp   n24_match_release_α
n27_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n26_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n30_lit_string_α
n28_assign_β:
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_match_breakx_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 68], r14d
                        mov              dword ptr [rsp + 64], 0
                        mov              r8, qword ptr [rsp + 536]
                        mov              r9d, dword ptr [rsp + 532]
.Lx171_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jl    .Lx171_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_match_head_β
.Lx171_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx171_5:
                        cmp              edx, r9d
                                                                                        jge   .Lx171_7
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx171_1
                        add              edx, 1
                                                                                        jmp   .Lx171_5
.Lx171_7:
                        add              dword ptr [rsp + 64], 1
                                                                                        jmp   .Lx171_0
.Lx171_1:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n26_match_assign_cond_α
n29_match_breakx_β:
                        add              dword ptr [rsp + 64], 1
                        mov              r8, qword ptr [rsp + 536]
                        mov              r9d, dword ptr [rsp + 532]
.Lx171_2:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx171_4
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx171_6:
                        cmp              edx, r9d
                                                                                        jge   .Lx171_8
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx171_3
                        add              edx, 1
                                                                                        jmp   .Lx171_6
.Lx171_8:
                        add              dword ptr [rsp + 64], 1
                                                                                        jmp   .Lx171_2
.Lx171_3:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n26_match_assign_cond_α
.Lx171_4:
                        mov              r14d, dword ptr [rsp + 68]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_match_head_β
#=======================================================================================================================
# 	'abc' ANY(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rsp + 736], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n31_var_α
n30_lit_string_β:
                                                                                        jmp   n33_var_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                                                                                        jmp   n32_op73_α
n31_var_β:
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op73_α:
                        lea              rdi, [rsp + 720]
                        lea              rsi, [rsp + 704]
                        mov              rdx, 3866683
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n34_match_head_α
n32_op73_β:
                                                                                        jmp   n33_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_α
n33_var_β:
                        add              rsp, 16
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_match_head_α:
                        mov              qword ptr [rsp + 608], r13
                        mov              qword ptr [rsp + 616], r14
                        mov              qword ptr [rsp + 624], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 632], rax
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
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
.Lx178_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n37_match_assign_save_α
n34_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx178_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx178_1
                                                                                        jmp   .Lx178_0
.Lx178_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx178_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx178_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 608]
                        mov              r14, qword ptr [rsp + 616]
                        mov              r15, qword ptr [rsp + 624]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 632]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n36_lit_string_α
n35_assign_β:
                                                                                        jmp   n36_lit_string_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	C = 'xz'
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
n36_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n40_lit_string_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "xz"
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n39_match_any_α
n37_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n34_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n40_lit_string_α
n38_assign_β:
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx185_239
                        add              rsp, 16
                                                                                        jmp   n34_match_head_β
.Lx185_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rsp + 760]
                        mov              r9d, dword ptr [rsp + 756]
                        mov              edx, 0
.Lx185_5:
                        cmp              edx, r9d
                                                                                        jl    .Lx185_240
                        add              rsp, 16
                                                                                        jmp   n34_match_head_β
.Lx185_240:
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx185_6
                        add              edx, 1
                                                                                        jmp   .Lx185_5
.Lx185_6:
                        add              r14d, 1
                                                                                        jmp   n41_match_assign_cond_α
n39_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n34_match_head_β
#=======================================================================================================================
# 	'abc' NOTANY(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rsp + 976], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n42_var_α
n40_lit_string_β:
                                                                                        jmp   n45_var_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n41_match_assign_cond_α:
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
                                                                                        jmp   n43_match_release_α
n41_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n39_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n44_op73_α
n42_var_β:
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_match_release_α:
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
.Lx191_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx191_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx191_1:
                        test             rax, rax
                                                                                        je    .Lx191_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx191_3]
                        lea              rdx, [rip + .Lx191_4]
                                                                                        jmp   rax
.Lx191_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx191_1
.Lx191_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx191_1
.Lx191_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx191_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx191_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 608]
                        mov              r14, qword ptr [rsp + 616]
                        mov              r15, qword ptr [rsp + 624]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 632]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op73_α:
                        lea              rdi, [rsp + 960]
                        lea              rsi, [rsp + 944]
                        mov              rdx, 9896087
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n46_match_head_α
n44_op73_β:
                                                                                        jmp   n45_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_assign_α
n45_var_β:
                        add              rsp, 16
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_match_head_α:
                        mov              qword ptr [rsp + 848], r13
                        mov              qword ptr [rsp + 856], r14
                        mov              qword ptr [rsp + 864], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 872], rax
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
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
.Lx196_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n49_match_assign_save_α
n46_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx196_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx196_1
                                                                                        jmp   .Lx196_0
.Lx196_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx196_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx196_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 848]
                        mov              r14, qword ptr [rsp + 856]
                        mov              r15, qword ptr [rsp + 864]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 872]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx197_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n48_lit_string_α
n47_assign_β:
                                                                                        jmp   n48_lit_string_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	C = 'ab'
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_assign_α
n48_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n49_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n51_match_notany_α
n49_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n46_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n52_lit_string_α
n50_assign_β:
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx202_239
                        add              rsp, 16
                                                                                        jmp   n46_match_head_β
.Lx202_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rsp + 1000]
                        mov              r9d, dword ptr [rsp + 996]
                        mov              edx, 0
.Lx202_5:
                        cmp              edx, r9d
                                                                                        jge   .Lx202_6
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        jne   .Lx202_240
                        add              rsp, 16
                                                                                        jmp   n46_match_head_β
.Lx202_240:
                        add              edx, 1
                                                                                        jmp   .Lx202_5
.Lx202_6:
                        add              r14d, 1
                                                                                        jmp   n53_match_assign_cond_α
n51_match_notany_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n46_match_head_β
#=======================================================================================================================
# 	'aabbc' SPAN(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rsp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n54_var_α
n52_lit_string_β:
                                                                                        jmp   n57_var_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "aabbc"
#-----------------------------------------------------------------------------------------------------------------------
n53_match_assign_cond_α:
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
                                                                                        jmp   n55_match_release_α
n53_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n51_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                                                                                        jmp   n56_op73_α
n54_var_β:
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_match_release_α:
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
.Lx208_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx208_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx208_1:
                        test             rax, rax
                                                                                        je    .Lx208_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx208_3]
                        lea              rdx, [rip + .Lx208_4]
                                                                                        jmp   rax
.Lx208_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx208_1
.Lx208_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx208_1
.Lx208_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx208_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx208_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 848]
                        mov              r14, qword ptr [rsp + 856]
                        mov              r15, qword ptr [rsp + 864]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 872]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op73_α:
                        lea              rdi, [rsp + 1200]
                        lea              rsi, [rsp + 1184]
                        mov              rdx, 12320956
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n58_match_head_α
n56_op73_β:
                                                                                        jmp   n57_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_assign_α
n57_var_β:
                        add              rsp, 16
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_match_head_α:
                        mov              qword ptr [rsp + 1088], r13
                        mov              qword ptr [rsp + 1096], r14
                        mov              qword ptr [rsp + 1104], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
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
.Lx213_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n61_match_assign_save_α
n58_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx213_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx213_1
                                                                                        jmp   .Lx213_0
.Lx213_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx213_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx213_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1088]
                        mov              r14, qword ptr [rsp + 1096]
                        mov              r15, qword ptr [rsp + 1104]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1112]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx214_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n60_lit_integer_α
n59_assign_β:
                                                                                        jmp   n60_lit_integer_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 9
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_assign_α
n60_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n64_lit_integer_α
.Lx215_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n61_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n63_match_span_α
n61_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n58_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n64_lit_integer_α
n62_assign_β:
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_match_span_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              r8, qword ptr [rsp + 1256]
                        mov              r9d, dword ptr [rsp + 1252]
.Lx220_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx220_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx220_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx220_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx220_3
                        add              edx, 1
                                                                                        jmp   .Lx220_2
.Lx220_3:
                        add              dword ptr [rsp + 64], 1
                                                                                        jmp   .Lx220_0
.Lx220_1:
                        mov              eax, dword ptr [rsp + 64]
                        test             eax, eax
                                                                                        jg    .Lx220_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n58_match_head_β
.Lx220_240:
                        mov              edx, r14d
                        mov              dword ptr [rsp + 68], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n65_match_assign_cond_α
n63_match_span_β:
                        mov              r14d, dword ptr [rsp + 68]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n58_match_head_β
#=======================================================================================================================
# 	N = 3
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_assign_α
n64_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n68_lit_string_α
.Lx221_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n65_match_assign_cond_α:
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
                                                                                        jmp   n67_match_release_α
n65_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n63_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n68_lit_string_α
n66_assign_β:
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx226_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx226_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx226_1:
                        test             rax, rax
                                                                                        je    .Lx226_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4]
                                                                                        jmp   rax
.Lx226_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx226_1
.Lx226_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx226_1
.Lx226_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx226_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx226_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1088]
                        mov              r14, qword ptr [rsp + 1096]
                        mov              r15, qword ptr [rsp + 1104]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1112]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n57_var_α
#=======================================================================================================================
# 	'abcde' TAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rsp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n69_var_α
n68_lit_string_β:
                                                                                        jmp   n71_var_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                                                                                        jmp   n70_op74_α
n69_var_β:
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_op74_α:
                        lea              rdi, [rsp + 1456]
                        lea              rsi, [rsp + 1440]
                        mov              rdx, 12058807
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n72_match_head_α
n70_op74_β:
                                                                                        jmp   n71_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_assign_α
n71_var_β:
                        add              rsp, 16
                                                                                        jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n72_match_head_α:
                        mov              qword ptr [rsp + 1344], r13
                        mov              qword ptr [rsp + 1352], r14
                        mov              qword ptr [rsp + 1360], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
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
.Lx233_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n75_match_assign_save_α
n72_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx233_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx233_1
                                                                                        jmp   .Lx233_0
.Lx233_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx233_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx233_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1344]
                        mov              r14, qword ptr [rsp + 1352]
                        mov              r15, qword ptr [rsp + 1360]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1368]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx234_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n74_lit_integer_α
n73_assign_β:
                                                                                        jmp   n74_lit_integer_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 2
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_assign_α
n74_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n78_lit_string_α
.Lx235_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n75_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n77_match_tab_α
n75_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n72_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n78_lit_string_α
n76_assign_β:
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], r14d
                        mov              rax, qword ptr [rsp + 1512]
                        cmp              r14d, eax
                                                                                        jle   .Lx239_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n72_match_head_β
.Lx239_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx239_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n72_match_head_β
.Lx239_240:
                        mov              r14d, eax
                                                                                        jmp   n79_match_assign_cond_α
n77_match_tab_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n72_match_head_β
#=======================================================================================================================
# 	'abcde' RTAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rsp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n80_var_α
n78_lit_string_β:
                                                                                        jmp   n83_var_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n79_match_assign_cond_α:
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
                                                                                        jmp   n81_match_release_α
n79_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n77_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                                                                                        jmp   n82_op74_α
n80_var_β:
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx245_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx245_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx245_1:
                        test             rax, rax
                                                                                        je    .Lx245_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx245_3]
                        lea              rdx, [rip + .Lx245_4]
                                                                                        jmp   rax
.Lx245_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx245_1
.Lx245_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx245_1
.Lx245_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx245_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx245_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1344]
                        mov              r14, qword ptr [rsp + 1352]
                        mov              r15, qword ptr [rsp + 1360]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1368]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op74_α:
                        lea              rdi, [rsp + 1696]
                        lea              rsi, [rsp + 1680]
                        mov              rdx, 11927733
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n84_match_head_α
n82_op74_β:
                                                                                        jmp   n83_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_assign_α
n83_var_β:
                        add              rsp, 16
                                                                                        jmp   n86_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_match_head_α:
                        mov              qword ptr [rsp + 1584], r13
                        mov              qword ptr [rsp + 1592], r14
                        mov              qword ptr [rsp + 1600], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
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
.Lx250_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n87_match_assign_save_α
n84_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx250_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx250_1
                                                                                        jmp   .Lx250_0
.Lx250_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx250_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx250_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1584]
                        mov              r14, qword ptr [rsp + 1592]
                        mov              r15, qword ptr [rsp + 1600]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1608]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx251_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n86_lit_integer_α
n85_assign_β:
                                                                                        jmp   n86_lit_integer_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 3
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_assign_α
n86_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n90_lit_string_α
.Lx252_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n87_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n89_match_rtab_α
n87_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n84_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n90_lit_string_α
n88_assign_β:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_match_rtab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], r14d
                        mov              rax, qword ptr [rsp + 1752]
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jle   .Lx256_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n84_match_head_β
.Lx256_240:
                        mov              r14d, ecx
                                                                                        jmp   n91_match_assign_cond_α
n89_match_rtab_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n84_match_head_β
#=======================================================================================================================
# 	'abcde' RPOS(N) LEN(1) . W
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 1976], rax
                                                                                        jmp   n92_var_α
n90_lit_string_β:
                                                                                        jmp   n95_var_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n91_match_assign_cond_α:
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
                                                                                        jmp   n93_match_release_α
n91_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n89_match_rtab_β
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                                                                                        jmp   n94_op74_α
n92_var_β:
                                                                                        jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx262_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx262_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx262_1:
                        test             rax, rax
                                                                                        je    .Lx262_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx262_1
.Lx262_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx262_1
.Lx262_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx262_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx262_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1584]
                        mov              r14, qword ptr [rsp + 1592]
                        mov              r15, qword ptr [rsp + 1600]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1608]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op74_α:
                        lea              rdi, [rsp + 1952]
                        lea              rsi, [rsp + 1936]
                        mov              rdx, 12189881
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n96_match_head_α
n94_op74_β:
                                                                                        jmp   n95_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n97_assign_α
n95_var_β:
                        add              rsp, 16
                                                                                        jmp   n98_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n96_match_head_α:
                        mov              qword ptr [rsp + 1824], r13
                        mov              qword ptr [rsp + 1832], r14
                        mov              qword ptr [rsp + 1840], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
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
.Lx267_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n99_match_sequence_α
n96_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx267_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx267_1
                                                                                        jmp   .Lx267_0
.Lx267_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx267_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx267_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1824]
                        mov              r14, qword ptr [rsp + 1832]
                        mov              r15, qword ptr [rsp + 1840]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1848]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx268_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n98_lit_integer_α
n97_assign_β:
                                                                                        jmp   n98_lit_integer_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 2
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n100_assign_α
n98_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n105_lit_string_α
.Lx269_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n99_match_sequence_α:
                                                                                        jmp   n102_match_rpos_α
n99_match_sequence_as:
                                                                                        jmp   n101_match_release_α
n99_match_sequence_β:
                                                                                        jmp   n104_match_assign_cond_β
n99_match_sequence_af:
                                                                                        jmp   n96_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n105_lit_string_α
n100_assign_β:
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_match_release_α:
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
.Lx274_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx274_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx274_1:
                        test             rax, rax
                                                                                        je    .Lx274_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4]
                                                                                        jmp   rax
.Lx274_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx274_1
.Lx274_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx274_1
.Lx274_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx274_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx274_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1824]
                        mov              r14, qword ptr [rsp + 1832]
                        mov              r15, qword ptr [rsp + 1840]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1848]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n102_match_rpos_α:
                        mov              rax, qword ptr [rsp + 1976]
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n96_match_head_β
                                                                                        jmp   n103_match_assign_save_α
n102_match_rpos_β:
                                                                                        jmp   n96_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n103_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n106_match_len_α
n103_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n96_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n104_match_assign_cond_α:
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
                                                                                        jmp   n101_match_release_α
n104_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n106_match_len_β
#=======================================================================================================================
# 	'abcde' LEN(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rsp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n107_var_α
n105_lit_string_β:
                                                                                        jmp   n109_var_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n106_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx281_240
                        add              rsp, 16
                                                                                        jmp   n96_match_head_β
.Lx281_240:
                        add              r14d, 1
                                                                                        jmp   n104_match_assign_cond_α
n106_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n96_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                                                                                        jmp   n108_op74_α
n107_var_β:
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n108_op74_α:
                        lea              rdi, [rsp + 2192]
                        lea              rsi, [rsp + 2176]
                        mov              rdx, 7929976
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n110_match_head_α
n108_op74_β:
                                                                                        jmp   n109_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_assign_α
n109_var_β:
                        add              rsp, 16
                                                                                        jmp   n112_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_match_head_α:
                        mov              qword ptr [rsp + 2080], r13
                        mov              qword ptr [rsp + 2088], r14
                        mov              qword ptr [rsp + 2096], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rdi, qword ptr [rsp + 2208]
                        mov              rsi, qword ptr [rsp + 2216]
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
.Lx287_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n113_match_assign_save_α
n110_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx287_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx287_1
                                                                                        jmp   .Lx287_0
.Lx287_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx287_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx287_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 2080]
                        mov              r14, qword ptr [rsp + 2088]
                        mov              r15, qword ptr [rsp + 2096]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 2104]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx288_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n112_lit_string_α
n111_assign_β:
                                                                                        jmp   n112_lit_string_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = '2'
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n114_assign_α
n112_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n116_lit_string_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n113_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n115_match_len_α
n113_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n110_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n116_lit_string_α
n114_assign_β:
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_match_len_α:
                        mov              rcx, qword ptr [rsp + 2232]
                        mov              eax, r14d
                        add              eax, ecx
                        cmp              eax, r15d
                                                                                        jle   .Lx293_240
                        add              rsp, 16
                                                                                        jmp   n110_match_head_β
.Lx293_240:
                        add              r14d, ecx
                                                                                        jmp   n117_match_assign_cond_α
n115_match_len_β:
                        mov              rcx, qword ptr [rsp + 2232]
                        sub              r14d, ecx
                        add              rsp, 16
                                                                                        jmp   n110_match_head_β
#=======================================================================================================================
# 	'abcde' TAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rsp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 2456], rax
                                                                                        jmp   n118_var_α
n116_lit_string_β:
                                                                                        jmp   n121_var_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n117_match_assign_cond_α:
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
                                                                                        jmp   n119_match_release_α
n117_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n115_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                                                                                        jmp   n120_op74_α
n118_var_β:
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_match_release_α:
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
.Lx299_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx299_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx299_1:
                        test             rax, rax
                                                                                        je    .Lx299_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx299_3]
                        lea              rdx, [rip + .Lx299_4]
                                                                                        jmp   rax
.Lx299_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx299_1
.Lx299_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx299_1
.Lx299_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx299_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx299_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 2080]
                        mov              r14, qword ptr [rsp + 2088]
                        mov              r15, qword ptr [rsp + 2096]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 2104]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op74_α:
                        lea              rdi, [rsp + 2432]
                        lea              rsi, [rsp + 2416]
                        mov              rdx, 12058807
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n122_match_head_α
n120_op74_β:
                                                                                        jmp   n121_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n123_assign_α
n121_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n122_match_head_α:
                        mov              qword ptr [rsp + 2320], r13
                        mov              qword ptr [rsp + 2328], r14
                        mov              qword ptr [rsp + 2336], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 2344], rax
                        mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
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
.Lx304_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n124_match_assign_save_α
n122_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx304_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx304_1
                                                                                        jmp   .Lx304_0
.Lx304_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx304_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx304_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 2320]
                        mov              r14, qword ptr [rsp + 2328]
                        mov              r15, qword ptr [rsp + 2336]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 2344]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx305_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n123_assign_β:
                                                                                        jmp   main_γ
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n124_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n125_match_tab_α
n124_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n122_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n125_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], r14d
                        mov              rax, qword ptr [rsp + 2488]
                        cmp              r14d, eax
                                                                                        jle   .Lx308_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n122_match_head_β
.Lx308_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx308_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n122_match_head_β
.Lx308_240:
                        mov              r14d, eax
                                                                                        jmp   n126_match_assign_cond_α
n125_match_tab_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n122_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_assign_cond_α:
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
                                                                                        jmp   n127_match_release_α
n126_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n125_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n127_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx312_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx312_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx312_1:
                        test             rax, rax
                                                                                        je    .Lx312_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx312_3]
                        lea              rdx, [rip + .Lx312_4]
                                                                                        jmp   rax
.Lx312_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx312_1
.Lx312_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx312_1
.Lx312_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx312_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx312_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 2320]
                        mov              r14, qword ptr [rsp + 2328]
                        mov              r15, qword ptr [rsp + 2336]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 2344]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 2488
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 2488
                        ret
                        .section         .rodata
.S0:                    .string          "W"
.S1:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
