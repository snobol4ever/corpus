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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
# 	V = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
# 	V = ','
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
n4_statement_begin_β:
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n8_statement_begin_α
#=======================================================================================================================
# 	'ab,cd' BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_lit_string_α
n8_statement_begin_β:
                                                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_var_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_coerce_string_α
n10_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n12_match_begin_α
n11_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_var_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_begin_α:
                        sub              rsp, 240
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
                        mov              rdi, qword ptr [rsp + 272]                     # lit_string
                        mov              rsi, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 224], rdi
                        mov              qword ptr [rsp + 232], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx209_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n13_match_assign_save_α
n12_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx209_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx209_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx209_0
.Lx209_1:
n12_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 240
                                                                                        jmp   n11_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n14_match_break_α
n13_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_break_α:
                        sub              rsp, 16
                        mov              edi, r14d                                      # start_pos
                        mov              rsi, qword ptr [rsp + 328]                     # coerce_string
                        mov              edx, dword ptr [rsp + 324]                     # needle_len
                        call             rt_sg_scan_nonmember@PLT
                        cmp              eax, r15d
                                                                                        jl    .Lx213_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_match_begin_β
.Lx213_240:
                        mov              dword ptr [rsp + 112], r14d
                        mov              r14d, eax
                                                                                        jmp   n15_match_assign_cond_α
n14_match_break_β:
                        mov              r14d, dword ptr [rsp + 112]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n16_match_end_α
n15_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n14_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx217_1:
                        test             rax, rax
                                                                                        je    .Lx217_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx217_3]
                        lea              rdx, [rip + .Lx217_4]
                                                                                        jmp   rax
.Lx217_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx217_1
.Lx217_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx217_1
.Lx217_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n17_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 288
                                                                                        jmp   n18_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_var_α
n18_statement_begin_β:
                                                                                        jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx223_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n21_statement_end_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n22_statement_begin_α
#=======================================================================================================================
# 	V = 'A'
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:
                                                                                        jmp   n23_lit_string_α
n22_statement_begin_β:
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n24_assign_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n26_statement_begin_α
#=======================================================================================================================
# 	'EXCEPTIONS ARE AS TRUE AS RULES' BREAKX(V) . OUTPUT 'AS'
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:
                                                                                        jmp   n27_lit_string_α
n26_statement_begin_β:
                                                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_var_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "EXCEPTIONS ARE AS TRUE AS RULES"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_coerce_string_α
n28_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 4587590                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n30_match_begin_α
n29_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n28_var_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_begin_α:
                        sub              rsp, 464
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              rdi, qword ptr [rsp + 496]                     # lit_string
                        mov              rsi, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 448], rdi
                        mov              qword ptr [rsp + 456], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx239_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n31_match_assign_save_α
n30_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx239_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx239_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx239_0
.Lx239_1:
n30_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 464
                                                                                        jmp   n29_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n32_match_breakx_α
n31_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_breakx_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 116], r14d
                        mov              rsi, qword ptr [rsp + 552]                     # coerce_string
                        mov              edx, dword ptr [rsp + 548]                     # needle_len
                        mov              edi, r14d                                      # start_pos
                        call             rt_sg_scan_member@PLT
                        cmp              eax, r15d
                                                                                        jl    .Lx243_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n30_match_begin_β
.Lx243_240:
                        mov              r14d, eax
                                                                                        jmp   n33_match_assign_cond_α
n32_match_breakx_β:
                        mov              rsi, qword ptr [rsp + 552]
                        mov              edx, dword ptr [rsp + 548]
                        mov              edi, r14d
                        add              edi, 1
                        call             rt_sg_scan_member@PLT
                        cmp              eax, r15d
                                                                                        jge   .Lx243_4
                        mov              r14d, eax
                                                                                        jmp   n33_match_assign_cond_α
.Lx243_4:
                        mov              r14d, dword ptr [rsp + 116]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n30_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n34_match_lit_α
n33_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n32_match_breakx_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n33_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n33_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 83
                                                                                        jne   n33_match_assign_cond_β
                        add              r14d, 2
                                                                                        jmp   n35_match_end_α
n34_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n33_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx249_1:
                        test             rax, rax
                                                                                        je    .Lx249_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx249_3]
                        lea              rdx, [rip + .Lx249_4]
                                                                                        jmp   rax
.Lx249_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx249_1
.Lx249_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx249_1
.Lx249_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n36_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:
                        add              rsp, 512
                                                                                        jmp   n37_statement_begin_α
#=======================================================================================================================
# 	C = 'z'
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:
                                                                                        jmp   n38_lit_string_α
n37_statement_begin_β:
                                                                                        jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n41_statement_begin_α
#=======================================================================================================================
# 	C = 'xa'
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:
                                                                                        jmp   n42_lit_string_α
n41_statement_begin_β:
                                                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "xa"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n45_statement_begin_α
#=======================================================================================================================
# 	'abc' ANY(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:
                                                                                        jmp   n46_lit_string_α
n45_statement_begin_β:
                                                                                        jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_var_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # C
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_coerce_string_α
n47_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n49_match_begin_α
n48_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n47_var_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_begin_α:
                        sub              rsp, 688
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              rdi, qword ptr [rsp + 720]                     # lit_string
                        mov              rsi, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 672], rdi
                        mov              qword ptr [rsp + 680], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx271_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n50_match_assign_save_α
n49_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx271_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx271_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx271_0
.Lx271_1:
n49_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 688
                                                                                        jmp   n48_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n50_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n51_match_any_α
n50_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n49_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx275_239
                        add              rsp, 16
                                                                                        jmp   n49_match_begin_β
.Lx275_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]                        # needle_ptr
                        mov              edi, esi                                       # char
                        mov              rsi, qword ptr [rsp + 776]                     # coerce_string
                        mov              edx, dword ptr [rsp + 772]                     # needle_len
                        call             rt_sg_member@PLT
                        test             eax, eax
                                                                                        jne   .Lx275_240
                        add              rsp, 16
                                                                                        jmp   n49_match_begin_β
.Lx275_240:
                        add              r14d, 1
                                                                                        jmp   n52_match_assign_cond_α
n51_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n49_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n53_match_end_α
n52_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n51_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx279_1:
                        test             rax, rax
                                                                                        je    .Lx279_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4]
                                                                                        jmp   rax
.Lx279_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx279_1
.Lx279_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx279_1
.Lx279_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n54_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:
                        add              rsp, 736
                                                                                        jmp   n55_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:
                                                                                        jmp   n56_var_α
n55_statement_begin_β:
                                                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx285_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n58_statement_end_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n59_statement_begin_α
#=======================================================================================================================
# 	C = 'xz'
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:
                                                                                        jmp   n60_lit_string_α
n59_statement_begin_β:
                                                                                        jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_assign_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "xz"
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n62_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n63_statement_begin_α
#=======================================================================================================================
# 	'abc' NOTANY(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:
                                                                                        jmp   n64_lit_string_α
n63_statement_begin_β:
                                                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n65_var_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # C
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_coerce_string_α
n65_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 9896087                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n67_match_begin_α
n66_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n65_var_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_begin_α:
                        sub              rsp, 912
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              rdi, qword ptr [rsp + 944]                     # lit_string
                        mov              rsi, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 896], rdi
                        mov              qword ptr [rsp + 904], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx301_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n68_match_assign_save_α
n67_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx301_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx301_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx301_0
.Lx301_1:
n67_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 912
                                                                                        jmp   n66_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n68_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n69_match_notany_α
n68_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n67_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n69_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx304_239
                        add              rsp, 16
                                                                                        jmp   n67_match_begin_β
.Lx304_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]                        # needle_ptr
                        mov              edi, esi                                       # char
                        mov              rsi, qword ptr [rsp + 1000]                    # coerce_string
                        mov              edx, dword ptr [rsp + 996]                     # needle_len
                        call             rt_sg_member@PLT
                        test             eax, eax
                                                                                        je    .Lx304_240
                        add              rsp, 16
                                                                                        jmp   n67_match_begin_β
.Lx304_240:
                        add              r14d, 1
                                                                                        jmp   n70_match_assign_cond_α
n69_match_notany_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n67_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n71_match_end_α
n70_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n69_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx308_1:
                        test             rax, rax
                                                                                        je    .Lx308_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx308_3]
                        lea              rdx, [rip + .Lx308_4]
                                                                                        jmp   rax
.Lx308_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx308_1
.Lx308_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx308_1
.Lx308_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n72_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:
                        add              rsp, 960
                                                                                        jmp   n73_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:
                                                                                        jmp   n74_var_α
n73_statement_begin_β:
                                                                                        jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx314_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n76_statement_end_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n77_statement_begin_α
#=======================================================================================================================
# 	C = 'ab'
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:
                                                                                        jmp   n78_lit_string_α
n77_statement_begin_β:
                                                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_assign_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n81_statement_begin_α
#=======================================================================================================================
# 	'aabbc' SPAN(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:
                                                                                        jmp   n82_lit_string_α
n81_statement_begin_β:
                                                                                        jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_var_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "aabbc"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # C
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_coerce_string_α
n83_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n85_match_begin_α
n84_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n83_var_β
#-----------------------------------------------------------------------------------------------------------------------
n85_match_begin_α:
                        sub              rsp, 1136
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              rdi, qword ptr [rsp + 1168]                    # lit_string
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1120], rdi
                        mov              qword ptr [rsp + 1128], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx330_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n86_match_assign_save_α
n85_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx330_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx330_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx330_0
.Lx330_1:
n85_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 1136
                                                                                        jmp   n84_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n86_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n87_match_span_α
n86_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n85_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_span_α:
                        sub              rsp, 16
                        mov              eax, r14d
                        mov              rsi, qword ptr [rsp + 1224]                    # coerce_string
                        mov              edx, dword ptr [rsp + 1220]
.Lx334_0:
                        cmp              eax, r15d
                                                                                        jl    .Lx334_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n85_match_begin_β
.Lx334_239:
                        movsxd           rcx, eax
                        movzx            edi, byte ptr [r13+rcx]                        # char
                        call             rt_sg_member@PLT
                        test             eax, eax
                                                                                        je    .Lx334_1
                        add              eax, 1
                                                                                        jmp   .Lx334_0
.Lx334_1:
                        cmp              eax, r14d
                                                                                        jne   .Lx334_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n85_match_begin_β
.Lx334_240:
                        mov              dword ptr [rsp + 112], r14d
                        mov              r14d, eax
                                                                                        jmp   n88_match_assign_cond_α
n87_match_span_β:
                        mov              r14d, dword ptr [rsp + 112]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n85_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n88_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n89_match_end_α
n88_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n87_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n89_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx338_1:
                        test             rax, rax
                                                                                        je    .Lx338_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx338_3]
                        lea              rdx, [rip + .Lx338_4]
                                                                                        jmp   rax
.Lx338_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx338_1
.Lx338_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx338_1
.Lx338_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n90_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:
                        add              rsp, 1184
                                                                                        jmp   n91_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:
                                                                                        jmp   n92_var_α
n91_statement_begin_β:
                                                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n93_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx344_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n94_statement_end_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n95_statement_begin_α
#=======================================================================================================================
# 	N = 9
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:
                                                                                        jmp   n96_lit_integer_α
n95_statement_begin_β:
                                                                                        jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_assign_α
.Lx349_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n99_statement_begin_α
#=======================================================================================================================
# 	N = 3
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:
                                                                                        jmp   n100_lit_integer_α
n99_statement_begin_β:
                                                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n101_assign_α
.Lx355_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n103_statement_begin_α
#=======================================================================================================================
# 	'abcde' TAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:
                                                                                        jmp   n104_lit_string_α
n103_statement_begin_β:
                                                                                        jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_var_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_coerce_integer_α
n105_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_coerce_integer_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12058807                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n107_match_begin_α
n106_coerce_integer_β:
                        add              rsp, 16
                                                                                        jmp   n105_var_β
#-----------------------------------------------------------------------------------------------------------------------
n107_match_begin_α:
                        sub              rsp, 1376
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              rdi, qword ptr [rsp + 1408]                    # lit_string
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1360], rdi
                        mov              qword ptr [rsp + 1368], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx366_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n108_match_assign_save_α
n107_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx366_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx366_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx366_0
.Lx366_1:
n107_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 1376
                                                                                        jmp   n106_coerce_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n108_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n109_match_tab_α
n108_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n107_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 112], r14d
                        mov              rax, qword ptr [rsp + 1464]                    # coerce_integer
                        cmp              r14d, eax
                                                                                        jle   .Lx369_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n107_match_begin_β
.Lx369_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx369_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n107_match_begin_β
.Lx369_240:
                        mov              r14d, eax
                                                                                        jmp   n110_match_assign_cond_α
n109_match_tab_β:
                        mov              r14d, dword ptr [rsp + 112]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n107_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n110_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n111_match_end_α
n110_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n109_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n111_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx373_1:
                        test             rax, rax
                                                                                        je    .Lx373_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx373_3]
                        lea              rdx, [rip + .Lx373_4]
                                                                                        jmp   rax
.Lx373_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx373_1
.Lx373_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx373_1
.Lx373_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n112_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:
                        add              rsp, 1424
                                                                                        jmp   n113_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:
                                                                                        jmp   n114_var_α
n113_statement_begin_β:
                                                                                        jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx379_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n116_statement_end_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n117_statement_begin_α
#=======================================================================================================================
# 	N = 2
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:
                                                                                        jmp   n118_lit_integer_α
n117_statement_begin_β:
                                                                                        jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_assign_α
.Lx384_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n121_statement_begin_α
#=======================================================================================================================
# 	'abcde' RTAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:
                                                                                        jmp   n122_lit_string_α
n121_statement_begin_β:
                                                                                        jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_var_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_coerce_integer_α
n123_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_coerce_integer_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 11927733                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n125_match_begin_α
n124_coerce_integer_β:
                        add              rsp, 16
                                                                                        jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n125_match_begin_α:
                        sub              rsp, 1600
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              rdi, qword ptr [rsp + 1632]                    # lit_string
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1584], rdi
                        mov              qword ptr [rsp + 1592], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx395_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n126_match_assign_save_α
n125_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx395_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx395_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx395_0
.Lx395_1:
n125_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 1600
                                                                                        jmp   n124_coerce_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n127_match_rtab_α
n126_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n125_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n127_match_rtab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 112], r14d
                        mov              rax, qword ptr [rsp + 1688]                    # coerce_integer
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jle   .Lx398_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n125_match_begin_β
.Lx398_240:
                        mov              r14d, ecx
                                                                                        jmp   n128_match_assign_cond_α
n127_match_rtab_β:
                        mov              r14d, dword ptr [rsp + 112]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n125_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n128_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n129_match_end_α
n128_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n127_match_rtab_β
#-----------------------------------------------------------------------------------------------------------------------
n129_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx402_1:
                        test             rax, rax
                                                                                        je    .Lx402_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx402_3]
                        lea              rdx, [rip + .Lx402_4]
                                                                                        jmp   rax
.Lx402_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx402_1
.Lx402_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx402_1
.Lx402_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n130_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:
                        add              rsp, 1648
                                                                                        jmp   n131_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:
                                                                                        jmp   n132_var_α
n131_statement_begin_β:
                                                                                        jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx408_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n134_statement_end_α
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n135_statement_begin_α
#=======================================================================================================================
# 	N = 3
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:
                                                                                        jmp   n136_lit_integer_α
n135_statement_begin_β:
                                                                                        jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_assign_α
.Lx413_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n138_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n139_statement_begin_α
#=======================================================================================================================
# 	'abcde' RPOS(N) LEN(1) . W
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α:
                                                                                        jmp   n140_lit_string_α
n139_statement_begin_β:
                                                                                        jmp   n150_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n141_var_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_coerce_integer_α
n141_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n150_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_integer_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12189881                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n143_match_begin_α
n142_coerce_integer_β:
                        add              rsp, 16
                                                                                        jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_begin_α:
                        sub              rsp, 1824
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              rdi, qword ptr [rsp + 1856]                    # lit_string
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1808], rdi
                        mov              qword ptr [rsp + 1816], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx424_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n144_match_rpos_α
n143_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx424_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx424_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx424_0
.Lx424_1:
n143_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 1824
                                                                                        jmp   n142_coerce_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_rpos_α:
                        mov              rax, qword ptr [rsp + 1896]
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n143_match_begin_β
                                                                                        jmp   n145_match_assign_save_α
n144_match_rpos_β:
                                                                                        jmp   n143_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n145_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n146_match_len_α
n145_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n143_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n146_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx428_240
                        add              rsp, 16
                                                                                        jmp   n143_match_begin_β
.Lx428_240:
                        add              r14d, 1
                                                                                        jmp   n147_match_assign_cond_α
n146_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n143_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n148_match_end_α
n147_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n146_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n148_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx432_1:
                        test             rax, rax
                                                                                        je    .Lx432_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx432_3]
                        lea              rdx, [rip + .Lx432_4]
                                                                                        jmp   rax
.Lx432_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx432_1
.Lx432_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx432_1
.Lx432_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n149_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:
                        add              rsp, 1872
                                                                                        jmp   n150_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α:
                                                                                        jmp   n151_var_α
n150_statement_begin_β:
                                                                                        jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx438_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n153_statement_end_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n154_statement_begin_α
#=======================================================================================================================
# 	N = 2
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α:
                                                                                        jmp   n155_lit_integer_α
n154_statement_begin_β:
                                                                                        jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n156_assign_α
.Lx443_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n157_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n158_statement_begin_α
#=======================================================================================================================
# 	'abcde' LEN(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:
                                                                                        jmp   n159_lit_string_α
n158_statement_begin_β:
                                                                                        jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n160_var_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n161_coerce_integer_α
n160_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_coerce_integer_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 7929976                                   # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n162_match_begin_α
n161_coerce_integer_β:
                        add              rsp, 16
                                                                                        jmp   n160_var_β
#-----------------------------------------------------------------------------------------------------------------------
n162_match_begin_α:
                        sub              rsp, 2048
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              rdi, qword ptr [rsp + 2080]                    # lit_string
                        mov              rsi, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2032], rdi
                        mov              qword ptr [rsp + 2040], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx454_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n163_match_assign_save_α
n162_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx454_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx454_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx454_0
.Lx454_1:
n162_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 2048
                                                                                        jmp   n161_coerce_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n163_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n164_match_len_α
n163_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n162_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n164_match_len_α:
                        mov              rcx, qword ptr [rsp + 2136]                    # coerce_integer
                        mov              eax, r14d
                        add              eax, ecx
                        cmp              eax, r15d
                                                                                        jle   .Lx457_240
                        add              rsp, 16
                                                                                        jmp   n162_match_begin_β
.Lx457_240:
                        add              r14d, ecx
                                                                                        jmp   n165_match_assign_cond_α
n164_match_len_β:
                        mov              rcx, qword ptr [rsp + 2136]
                        sub              r14d, ecx
                        add              rsp, 16
                                                                                        jmp   n162_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n166_match_end_α
n165_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n164_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n166_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx461_1:
                        test             rax, rax
                                                                                        je    .Lx461_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx461_3]
                        lea              rdx, [rip + .Lx461_4]
                                                                                        jmp   rax
.Lx461_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx461_1
.Lx461_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx461_1
.Lx461_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n167_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:
                        add              rsp, 2096
                                                                                        jmp   n168_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α:
                                                                                        jmp   n169_var_α
n168_statement_begin_β:
                                                                                        jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n170_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx467_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n171_statement_end_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n172_statement_begin_α
#=======================================================================================================================
# 	N = '2'
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α:
                                                                                        jmp   n173_lit_string_α
n172_statement_begin_β:
                                                                                        jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n174_assign_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n175_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n176_statement_begin_α
#=======================================================================================================================
# 	'abcde' TAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α:
                                                                                        jmp   n177_lit_string_α
n176_statement_begin_β:
                                                                                        jmp   n186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n178_var_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n179_coerce_integer_α
n178_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_coerce_integer_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12058807                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n180_match_begin_α
n179_coerce_integer_β:
                        add              rsp, 16
                                                                                        jmp   n178_var_β
#-----------------------------------------------------------------------------------------------------------------------
n180_match_begin_α:
                        sub              rsp, 2272
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              rdi, qword ptr [rsp + 2304]                    # lit_string
                        mov              rsi, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2256], rdi
                        mov              qword ptr [rsp + 2264], rsi
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx483_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n181_match_assign_save_α
n180_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx483_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx483_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx483_0
.Lx483_1:
n180_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 2272
                                                                                        jmp   n179_coerce_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n181_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n182_match_tab_α
n181_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n180_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n182_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 112], r14d
                        mov              rax, qword ptr [rsp + 2360]                    # coerce_integer
                        cmp              r14d, eax
                                                                                        jle   .Lx486_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n180_match_begin_β
.Lx486_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx486_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n180_match_begin_β
.Lx486_240:
                        mov              r14d, eax
                                                                                        jmp   n183_match_assign_cond_α
n182_match_tab_β:
                        mov              r14d, dword ptr [rsp + 112]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n180_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n183_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n184_match_end_α
n183_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n182_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n184_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx490_1:
                        test             rax, rax
                                                                                        je    .Lx490_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx490_3]
                        lea              rdx, [rip + .Lx490_4]
                                                                                        jmp   rax
.Lx490_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx490_1
.Lx490_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx490_1
.Lx490_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n185_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:
                        add              rsp, 2320
                                                                                        jmp   n186_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α:
                                                                                        jmp   n187_var_α
n186_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n188_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx496_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n189_statement_end_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "W"
.S1:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
