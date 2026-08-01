                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
.Lgvan1:                .string          "Y"
.Lgvan2:                .string          "Z"
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
#=======================================================================================================================
#  '(A!(C:D))' ? POS(0) BAL . X RPOS(0)   :F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 224
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                        add              rsp, 16
                        add              rsp, 224
                                                                                        jmp   n46_lit_string_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "(A!(C:D))"
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
.Lx58_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx58_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx58_1
                                                                                        jmp   .Lx58_0
.Lx58_1:
                        mov              r10, qword ptr [1879048192]
.Lx58_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx58_2
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
                        add              rsp, 224
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n43_lit_integer_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n39_match_rpos_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx62_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_9
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
.Lx62_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx62_1:
                        test             rax, rax
                                                                                        je    .Lx62_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_3]
                        lea              rdx, [rip + .Lx62_4]
                                                                                        jmp   rax
.Lx62_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx62_1
.Lx62_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx62_1
.Lx62_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx62_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 224
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
#  OUTPUT = 'bal1=' X                      :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_var_α
n4_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "bal1="
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
                                                                                        jmp   n8_lit_string_α
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
                                                                                        jmp   n7_assign_α
n6_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   n8_lit_string_α
n7_assign_β:
                        add              rsp, 48
                                                                                        jmp   n8_lit_string_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T2 '(AB)+(CD)' ? POS(0) BAL . Y RPOS(0)  :F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 384
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_match_head_α
n8_lit_string_β:
                        add              rsp, 16
                        add              rsp, 384
                                                                                        jmp   n50_lit_string_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "(AB)+(CD)"
#-----------------------------------------------------------------------------------------------------------------------
n9_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 240], r13
                        mov              qword ptr [rsp + 248], r14
                        mov              qword ptr [rsp + 256], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 264], rax
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
.Lx69_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n10_match_sequence_α
n9_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx69_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx69_1
                                                                                        jmp   .Lx69_0
.Lx69_1:
                        mov              r10, qword ptr [1879048192]
.Lx69_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 240]
                        mov              r14, qword ptr [rsp + 248]
                        mov              r15, qword ptr [rsp + 256]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 264]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 384
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_sequence_α:
                                                                                        jmp   n36_lit_integer_α
n10_match_sequence_as:
                                                                                        jmp   n11_match_release_α
n10_match_sequence_β:
                                                                                        jmp   n32_match_rpos_β
n10_match_sequence_af:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx73_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx73_9
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
.Lx73_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx73_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx73_1:
                        test             rax, rax
                                                                                        je    .Lx73_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4]
                                                                                        jmp   rax
.Lx73_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx73_1
.Lx73_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx73_1
.Lx73_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx73_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx73_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 240]
                        mov              r14, qword ptr [rsp + 248]
                        mov              r15, qword ptr [rsp + 256]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 264]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 384
                                                                                        jmp   n12_lit_string_α
#=======================================================================================================================
#  OUTPUT = 'bal2=' Y                      :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_var_α
n12_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "bal2="
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_binop_α
n13_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_assign_α
n14_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   n16_lit_string_α
n15_assign_β:
                        add              rsp, 48
                                                                                        jmp   n16_lit_string_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T3 '9395' ? POS(0) BAL . Z RPOS(0)       :F(N3)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 656
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_match_head_α
n16_lit_string_β:
                        add              rsp, 16
                        add              rsp, 656
                                                                                        jmp   n54_lit_string_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "9395"
#-----------------------------------------------------------------------------------------------------------------------
n17_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 512], r13
                        mov              qword ptr [rsp + 520], r14
                        mov              qword ptr [rsp + 528], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 536], rax
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
.Lx80_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_match_sequence_α
n17_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx80_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx80_1
                                                                                        jmp   .Lx80_0
.Lx80_1:
                        mov              r10, qword ptr [1879048192]
.Lx80_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx80_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 512]
                        mov              r14, qword ptr [rsp + 520]
                        mov              r15, qword ptr [rsp + 528]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 536]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 656
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n29_lit_integer_α
n18_match_sequence_as:
                                                                                        jmp   n19_match_release_α
n18_match_sequence_β:
                                                                                        jmp   n25_match_rpos_β
n18_match_sequence_af:
                                                                                        jmp   n17_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx84_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx84_9
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
.Lx84_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx84_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx84_1:
                        test             rax, rax
                                                                                        je    .Lx84_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx84_3]
                        lea              rdx, [rip + .Lx84_4]
                                                                                        jmp   rax
.Lx84_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx84_1
.Lx84_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx84_1
.Lx84_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx84_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx84_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 512]
                        mov              r14, qword ptr [rsp + 520]
                        mov              r15, qword ptr [rsp + 528]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 536]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 656
                                                                                        jmp   n20_lit_string_α
#=======================================================================================================================
#  OUTPUT = 'bal3=' Z                      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n21_var_α
n20_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "bal3="
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_binop_α
n21_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_assign_α
n22_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx88_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   main_γ
n23_assign_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rsp + 688], 6
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n25_match_rpos_α
n24_lit_integer_β:
                                                                                        jmp   n28_match_assign_cond_β
.Lx89_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n28_match_assign_cond_β
                                                                                        jmp   n19_match_release_α
n25_match_rpos_β:
                                                                                        jmp   n28_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n27_match_bal_α
n26_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n17_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                        mov              dword ptr [rsp + 72], 0
n27_match_bal_β:
.Lx94_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx94_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 64], 1
                        mov              edx, dword ptr [rsp + 72]
                        cmp              esi, 40
                                                                                        jne   .Lx94_1
                        add              edx, 1
                                                                                        jmp   .Lx94_2
.Lx94_1:
                        cmp              esi, 41
                                                                                        jne   .Lx94_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx94_3
.Lx94_2:
                        mov              dword ptr [rsp + 72], edx
                        test             edx, edx
                                                                                        jne   .Lx94_0
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n28_match_assign_cond_α
.Lx94_3:
                        mov              eax, dword ptr [rsp + 68]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_assign_cond_α:
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
                                                                                        jmp   n24_lit_integer_α
n28_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n27_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rsp + 592], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n30_match_pos_α
n29_lit_integer_β:
                                                                                        jmp   n17_match_head_β
.Lx97_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n17_match_head_β
                                                                                        jmp   n26_match_assign_save_α
n30_match_pos_β:
                                                                                        jmp   n17_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rsp + 416], 6
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n32_match_rpos_α
n31_lit_integer_β:
                                                                                        jmp   n35_match_assign_cond_β
.Lx99_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n35_match_assign_cond_β
                                                                                        jmp   n11_match_release_α
n32_match_rpos_β:
                                                                                        jmp   n35_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n34_match_bal_α
n33_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                        mov              dword ptr [rsp + 72], 0
n34_match_bal_β:
.Lx104_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx104_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 64], 1
                        mov              edx, dword ptr [rsp + 72]
                        cmp              esi, 40
                                                                                        jne   .Lx104_1
                        add              edx, 1
                                                                                        jmp   .Lx104_2
.Lx104_1:
                        cmp              esi, 41
                                                                                        jne   .Lx104_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx104_3
.Lx104_2:
                        mov              dword ptr [rsp + 72], edx
                        test             edx, edx
                                                                                        jne   .Lx104_0
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n35_match_assign_cond_α
.Lx104_3:
                        mov              eax, dword ptr [rsp + 68]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_cond_α:
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
                                                                                        jmp   n31_lit_integer_α
n35_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n34_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 320], 6
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n37_match_pos_α
n36_lit_integer_β:
                                                                                        jmp   n9_match_head_β
.Lx107_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n9_match_head_β
                                                                                        jmp   n33_match_assign_save_α
n37_match_pos_β:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n39_match_rpos_α
n38_lit_integer_β:
                                                                                        jmp   n42_match_assign_cond_β
.Lx109_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n42_match_assign_cond_β
                                                                                        jmp   n3_match_release_α
n39_match_rpos_β:
                                                                                        jmp   n42_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n41_match_bal_α
n40_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 68], eax
                        mov              dword ptr [rsp + 72], 0
n41_match_bal_β:
.Lx114_0:
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jge   .Lx114_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 64], 1
                        mov              edx, dword ptr [rsp + 72]
                        cmp              esi, 40
                                                                                        jne   .Lx114_1
                        add              edx, 1
                                                                                        jmp   .Lx114_2
.Lx114_1:
                        cmp              esi, 41
                                                                                        jne   .Lx114_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx114_3
.Lx114_2:
                        mov              dword ptr [rsp + 72], edx
                        test             edx, edx
                                                                                        jne   .Lx114_0
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, dword ptr [rsp + 64]
                        mov              r14d, eax
                                                                                        jmp   n42_match_assign_cond_α
.Lx114_3:
                        mov              eax, dword ptr [rsp + 68]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
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
                                                                                        jmp   n38_lit_integer_α
n42_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n41_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rsp + 160], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n44_match_pos_α
n43_lit_integer_β:
                                                                                        jmp   n1_match_head_β
.Lx117_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n1_match_head_β
                                                                                        jmp   n40_match_assign_save_α
n44_match_pos_β:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:
                                                                                        jmp   n46_lit_string_α
n45_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = 'bal1 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_assign_α
n46_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "bal1 FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx121_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
n47_assign_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                                                                                        jmp   n8_lit_string_α
n48_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_goto_α:
                                                                                        jmp   n50_lit_string_α
n49_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = 'bal2 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_assign_α
n50_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "bal2 FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
n51_assign_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n16_lit_string_α
n52_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:
                                                                                        jmp   n54_lit_string_α
n53_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N3 OUTPUT = 'bal3 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
n54_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "bal3 FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx129_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n55_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
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
.S0:                    .string          "Z"
.S1:                    .string          "Y"
.S2:                    .string          "X"
                        .text
                        .section         .note.GNU-stack,"",@progbits
