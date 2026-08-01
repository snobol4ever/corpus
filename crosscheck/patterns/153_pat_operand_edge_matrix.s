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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
# 	V = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
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
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx                    # V
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
# 	V = ','
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
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
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx                    # V
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
n3_assign_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
# 	'ab,cd' BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 1                       # lit_string
                        mov              dword ptr [rsp + 180], 5                       # lit_string
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 184], rax                     # lit_string
                                                                                        jmp   n5_var_α
n4_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n12_var_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]                    # V
                        mov              qword ptr [rsp + 160], rax                     # V
                        mov              qword ptr [rsp + 168], rdx                     # V
                                                                                        jmp   n6_coerce_string_α
n5_var_β:
                        add              rsp, 192
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_string_α:
                        lea              rdi, [rsp + 160]                               # in
                        lea              rsi, [rsp + 144]                               # out
                        mov              rdx, 4522053                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n7_match_head_α
n6_coerce_string_β:
                        add              rsp, 192
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 176]                     # lo
                        mov              rsi, qword ptr [rsp + 184]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx137_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n8_match_assign_save_α
n7_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx137_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx137_1
                                                                                        jmp   .Lx137_0
.Lx137_1:
                        mov              r10, qword ptr [1879048192]
.Lx137_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx137_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n9_match_break_α
n8_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rsp + 152]
                        mov              r9d, dword ptr [rsp + 148]
.Lx141_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx141_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
.Lx141_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx141_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx141_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx141_1
                        add              edx, 1
                                                                                        jmp   .Lx141_2
.Lx141_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx141_0
.Lx141_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n10_match_assign_cond_α
n9_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_cond_α:
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
                                                                                        jmp   n11_match_release_α
n10_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n9_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx145_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_9
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
.Lx145_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx145_1:
                        test             rax, rax
                                                                                        je    .Lx145_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx145_3]
                        lea              rdx, [rip + .Lx145_4]
                                                                                        jmp   rax
.Lx145_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx145_1
.Lx145_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx145_1
.Lx145_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx145_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n12_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n13_assign_α
n12_var_β:
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx147_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
n13_assign_β:
                        add              rsp, 16
                                                                                        jmp   n14_lit_string_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	V = 'A'
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n15_assign_α
n14_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx                    # V
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
n15_assign_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
#=======================================================================================================================
# 	'EXCEPTIONS ARE AS TRUE AS RULES' BREAKX(V) . OUTPUT 'AS'
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 480
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 1                       # lit_string
                        mov              dword ptr [rsp + 468], 31                      # lit_string
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 472], rax                     # lit_string
                                                                                        jmp   n17_var_α
n16_lit_string_β:
                        add              rsp, 480
                                                                                        jmp   n26_lit_string_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "EXCEPTIONS ARE AS TRUE AS RULES"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]                    # V
                        mov              qword ptr [rsp + 448], rax                     # V
                        mov              qword ptr [rsp + 456], rdx                     # V
                                                                                        jmp   n18_coerce_string_α
n17_var_β:
                        add              rsp, 480
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_string_α:
                        lea              rdi, [rsp + 448]                               # in
                        lea              rsi, [rsp + 432]                               # out
                        mov              rdx, 4587590                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n19_match_head_α
n18_coerce_string_β:
                        add              rsp, 480
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_match_head_α:
                        mov              qword ptr [rsp + 336], r13                     # outer_Σ
                        mov              qword ptr [rsp + 344], r14                     # outer_δ
                        mov              qword ptr [rsp + 352], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 360], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 464]                     # lo
                        mov              rsi, qword ptr [rsp + 472]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx155_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n20_match_sequence_α
n19_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx155_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx155_1
                                                                                        jmp   .Lx155_0
.Lx155_1:
                        mov              r10, qword ptr [1879048192]
.Lx155_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx155_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 336]
                        mov              r14, qword ptr [rsp + 344]
                        mov              r15, qword ptr [rsp + 352]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 360]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 480
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_match_sequence_α:
                                                                                        jmp   n23_match_assign_save_α
n20_match_sequence_as:
                                                                                        jmp   n21_match_release_α
n20_match_sequence_β:
                                                                                        jmp   n22_match_lit_β
n20_match_sequence_af:
                                                                                        jmp   n19_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx159_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx159_9
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
.Lx159_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx159_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx159_1:
                        test             rax, rax
                                                                                        je    .Lx159_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx159_3]
                        lea              rdx, [rip + .Lx159_4]
                                                                                        jmp   rax
.Lx159_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx159_1
.Lx159_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx159_1
.Lx159_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx159_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx159_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 336]
                        mov              r14, qword ptr [rsp + 344]
                        mov              r15, qword ptr [rsp + 352]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 360]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 480
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n25_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n25_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 83
                                                                                        jne   n25_match_assign_cond_β
                        add              r14d, 2
                                                                                        jmp   n21_match_release_α
n22_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n25_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n24_match_breakx_α
n23_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n19_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_breakx_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 4], r14d
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rsp + 440]
                        mov              r9d, dword ptr [rsp + 436]
.Lx165_0:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx165_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n19_match_head_β
.Lx165_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx165_5:
                        cmp              edx, r9d
                                                                                        jge   .Lx165_7
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx165_1
                        add              edx, 1
                                                                                        jmp   .Lx165_5
.Lx165_7:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx165_0
.Lx165_1:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax
                                                                                        jmp   n25_match_assign_cond_α
n24_match_breakx_β:
                        add              dword ptr [rsp + 0], 1
                        mov              r8, qword ptr [rsp + 440]
                        mov              r9d, dword ptr [rsp + 436]
.Lx165_2:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx165_4
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx165_6:
                        cmp              edx, r9d
                                                                                        jge   .Lx165_8
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx165_3
                        add              edx, 1
                                                                                        jmp   .Lx165_6
.Lx165_8:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx165_2
.Lx165_3:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax
                                                                                        jmp   n25_match_assign_cond_α
.Lx165_4:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n19_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_assign_cond_α:
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
                                                                                        jmp   n22_match_lit_α
n25_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n24_match_breakx_β
#=======================================================================================================================
# 	C = 'z'
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n27_assign_α
n26_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n28_lit_string_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx                    # C
                        add              rsp, 16
                                                                                        jmp   n28_lit_string_α
n27_assign_β:
                        add              rsp, 16
                                                                                        jmp   n28_lit_string_α
#=======================================================================================================================
# 	C = 'xa'
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 2                         # lit_string
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n29_assign_α
n28_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n30_lit_string_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "xa"
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx                    # C
                        add              rsp, 16
                                                                                        jmp   n30_lit_string_α
n29_assign_β:
                        add              rsp, 16
                                                                                        jmp   n30_lit_string_α
#=======================================================================================================================
# 	'abc' ANY(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 1                       # lit_string
                        mov              dword ptr [rsp + 692], 3                       # lit_string
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 696], rax                     # lit_string
                                                                                        jmp   n31_var_α
n30_lit_string_β:
                        add              rsp, 704
                                                                                        jmp   n38_var_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [1879052320]                    # C
                        mov              rdx, qword ptr [1879052328]                    # C
                        mov              qword ptr [rsp + 672], rax                     # C
                        mov              qword ptr [rsp + 680], rdx                     # C
                                                                                        jmp   n32_coerce_string_α
n31_var_β:
                        add              rsp, 704
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_string_α:
                        lea              rdi, [rsp + 672]                               # in
                        lea              rsi, [rsp + 656]                               # out
                        mov              rdx, 3866683                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n33_match_head_α
n32_coerce_string_β:
                        add              rsp, 704
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_match_head_α:
                        mov              qword ptr [rsp + 576], r13                     # outer_Σ
                        mov              qword ptr [rsp + 584], r14                     # outer_δ
                        mov              qword ptr [rsp + 592], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 600], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 688]                     # lo
                        mov              rsi, qword ptr [rsp + 696]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx177_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n34_match_assign_save_α
n33_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx177_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx177_1
                                                                                        jmp   .Lx177_0
.Lx177_1:
                        mov              r10, qword ptr [1879048192]
.Lx177_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx177_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 576]
                        mov              r14, qword ptr [rsp + 584]
                        mov              r15, qword ptr [rsp + 592]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 600]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 704
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n35_match_any_α
n34_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n33_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx181_239
                        add              rsp, 16
                                                                                        jmp   n33_match_head_β
.Lx181_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rsp + 664]
                        mov              r9d, dword ptr [rsp + 660]
                        mov              edx, 0
.Lx181_5:
                        cmp              edx, r9d
                                                                                        jl    .Lx181_240
                        add              rsp, 16
                                                                                        jmp   n33_match_head_β
.Lx181_240:
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx181_6
                        add              edx, 1
                                                                                        jmp   .Lx181_5
.Lx181_6:
                        add              r14d, 1
                                                                                        jmp   n36_match_assign_cond_α
n35_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n33_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_assign_cond_α:
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
                                                                                        jmp   n37_match_release_α
n36_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n35_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx185_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx185_9
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
.Lx185_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx185_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx185_1:
                        test             rax, rax
                                                                                        je    .Lx185_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx185_3]
                        lea              rdx, [rip + .Lx185_4]
                                                                                        jmp   rax
.Lx185_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx185_1
.Lx185_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx185_1
.Lx185_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx185_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx185_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 576]
                        mov              r14, qword ptr [rsp + 584]
                        mov              r15, qword ptr [rsp + 592]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 600]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 704
                                                                                        jmp   n38_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n39_assign_α
n38_var_β:
                        add              rsp, 16
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx187_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n40_lit_string_α
n39_assign_β:
                        add              rsp, 16
                                                                                        jmp   n40_lit_string_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	C = 'xz'
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 2                         # lit_string
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n41_assign_α
n40_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n42_lit_string_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "xz"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx                    # C
                        add              rsp, 16
                                                                                        jmp   n42_lit_string_α
n41_assign_β:
                        add              rsp, 16
                                                                                        jmp   n42_lit_string_α
#=======================================================================================================================
# 	'abc' NOTANY(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 704], 0                       # stmt_claim
                        mov              qword ptr [rsp + 712], 0                       # stmt_claim
                        mov              qword ptr [rsp + 720], 0                       # stmt_claim
                        mov              qword ptr [rsp + 728], 0                       # stmt_claim
                        mov              qword ptr [rsp + 736], 0                       # stmt_claim
                        mov              qword ptr [rsp + 744], 0                       # stmt_claim
                        mov              qword ptr [rsp + 752], 0                       # stmt_claim
                        mov              qword ptr [rsp + 760], 0                       # stmt_claim
                        mov              qword ptr [rsp + 768], 0                       # stmt_claim
                        mov              qword ptr [rsp + 776], 0                       # stmt_claim
                        mov              qword ptr [rsp + 784], 0                       # stmt_claim
                        mov              qword ptr [rsp + 792], 0                       # stmt_claim
                        mov              qword ptr [rsp + 800], 0                       # stmt_claim
                        mov              qword ptr [rsp + 808], 0                       # stmt_claim
                        mov              qword ptr [rsp + 816], 0                       # stmt_claim
                        mov              qword ptr [rsp + 824], 0                       # stmt_claim
                        mov              qword ptr [rsp + 832], 0                       # stmt_claim
                        mov              qword ptr [rsp + 840], 0                       # stmt_claim
                        mov              qword ptr [rsp + 848], 0                       # stmt_claim
                        mov              qword ptr [rsp + 856], 0                       # stmt_claim
                        mov              qword ptr [rsp + 864], 0                       # stmt_claim
                        mov              qword ptr [rsp + 872], 0                       # stmt_claim
                        mov              qword ptr [rsp + 880], 0                       # stmt_claim
                        mov              qword ptr [rsp + 888], 0                       # stmt_claim
                        mov              qword ptr [rsp + 896], 0                       # stmt_claim
                        mov              qword ptr [rsp + 904], 0                       # stmt_claim
                        mov              qword ptr [rsp + 912], 0                       # stmt_claim
                        mov              qword ptr [rsp + 920], 0                       # stmt_claim
                        mov              qword ptr [rsp + 912], 1                       # lit_string
                        mov              dword ptr [rsp + 916], 3                       # lit_string
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 920], rax                     # lit_string
                                                                                        jmp   n43_var_α
n42_lit_string_β:
                        add              rsp, 928
                                                                                        jmp   n50_var_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [1879052320]                    # C
                        mov              rdx, qword ptr [1879052328]                    # C
                        mov              qword ptr [rsp + 896], rax                     # C
                        mov              qword ptr [rsp + 904], rdx                     # C
                                                                                        jmp   n44_coerce_string_α
n43_var_β:
                        add              rsp, 928
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_string_α:
                        lea              rdi, [rsp + 896]                               # in
                        lea              rsi, [rsp + 880]                               # out
                        mov              rdx, 9896087                                   # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n45_match_head_α
n44_coerce_string_β:
                        add              rsp, 928
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_match_head_α:
                        mov              qword ptr [rsp + 800], r13                     # outer_Σ
                        mov              qword ptr [rsp + 808], r14                     # outer_δ
                        mov              qword ptr [rsp + 816], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 824], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 912]                     # lo
                        mov              rsi, qword ptr [rsp + 920]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx195_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n46_match_assign_save_α
n45_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx195_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx195_1
                                                                                        jmp   .Lx195_0
.Lx195_1:
                        mov              r10, qword ptr [1879048192]
.Lx195_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx195_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 800]
                        mov              r14, qword ptr [rsp + 808]
                        mov              r15, qword ptr [rsp + 816]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 824]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 928
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n47_match_notany_α
n46_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n45_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx198_239
                        add              rsp, 16
                                                                                        jmp   n45_match_head_β
.Lx198_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              r8, qword ptr [rsp + 888]
                        mov              r9d, dword ptr [rsp + 884]
                        mov              edx, 0
.Lx198_5:
                        cmp              edx, r9d
                                                                                        jge   .Lx198_6
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        jne   .Lx198_240
                        add              rsp, 16
                                                                                        jmp   n45_match_head_β
.Lx198_240:
                        add              edx, 1
                                                                                        jmp   .Lx198_5
.Lx198_6:
                        add              r14d, 1
                                                                                        jmp   n48_match_assign_cond_α
n47_match_notany_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n45_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_assign_cond_α:
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
                                                                                        jmp   n49_match_release_α
n48_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n47_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx202_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx202_9
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
.Lx202_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx202_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx202_1:
                        test             rax, rax
                                                                                        je    .Lx202_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx202_3]
                        lea              rdx, [rip + .Lx202_4]
                                                                                        jmp   rax
.Lx202_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx202_1
.Lx202_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx202_1
.Lx202_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx202_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx202_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 800]
                        mov              r14, qword ptr [rsp + 808]
                        mov              r15, qword ptr [rsp + 816]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 824]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 928
                                                                                        jmp   n50_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n51_assign_α
n50_var_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx204_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
n51_assign_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	C = 'ab'
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 2                         # lit_string
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n53_assign_α
n52_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n54_lit_string_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052320], rax                    # C
                        mov              qword ptr [1879052328], rdx                    # C
                        add              rsp, 16
                                                                                        jmp   n54_lit_string_α
n53_assign_β:
                        add              rsp, 16
                                                                                        jmp   n54_lit_string_α
#=======================================================================================================================
# 	'aabbc' SPAN(C) . W
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 1                       # lit_string
                        mov              dword ptr [rsp + 180], 5                       # lit_string
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 184], rax                     # lit_string
                                                                                        jmp   n55_var_α
n54_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n62_var_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "aabbc"
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [1879052320]                    # C
                        mov              rdx, qword ptr [1879052328]                    # C
                        mov              qword ptr [rsp + 160], rax                     # C
                        mov              qword ptr [rsp + 168], rdx                     # C
                                                                                        jmp   n56_coerce_string_α
n55_var_β:
                        add              rsp, 192
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_string_α:
                        lea              rdi, [rsp + 160]                               # in
                        lea              rsi, [rsp + 144]                               # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n57_match_head_α
n56_coerce_string_β:
                        add              rsp, 192
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 176]                     # lo
                        mov              rsi, qword ptr [rsp + 184]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx212_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n58_match_assign_save_α
n57_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx212_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx212_1
                                                                                        jmp   .Lx212_0
.Lx212_1:
                        mov              r10, qword ptr [1879048192]
.Lx212_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx212_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n59_match_span_α
n58_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n57_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_span_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rsp + 152]
                        mov              r9d, dword ptr [rsp + 148]
.Lx216_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx216_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx216_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx216_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx216_3
                        add              edx, 1
                                                                                        jmp   .Lx216_2
.Lx216_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx216_0
.Lx216_1:
                        mov              eax, dword ptr [rsp + 0]
                        test             eax, eax
                                                                                        jg    .Lx216_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_match_head_β
.Lx216_240:
                        mov              edx, r14d
                        mov              dword ptr [rsp + 4], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n60_match_assign_cond_α
n59_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n60_match_assign_cond_α:
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
                                                                                        jmp   n61_match_release_α
n60_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n59_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx220_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx220_9
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
.Lx220_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx220_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx220_1:
                        test             rax, rax
                                                                                        je    .Lx220_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx220_3]
                        lea              rdx, [rip + .Lx220_4]
                                                                                        jmp   rax
.Lx220_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx220_1
.Lx220_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx220_1
.Lx220_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx220_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx220_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n62_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n63_assign_α
n62_var_β:
                        add              rsp, 16
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx222_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n64_lit_integer_α
n63_assign_β:
                        add              rsp, 16
                                                                                        jmp   n64_lit_integer_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 9
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n65_assign_α
n64_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n66_lit_integer_α
.Lx223_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]                       # lit_integer
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx                    # N
                        add              rsp, 16
                                                                                        jmp   n66_lit_integer_α
n65_assign_β:
                        add              rsp, 16
                                                                                        jmp   n66_lit_integer_α
#=======================================================================================================================
# 	N = 3
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n67_assign_α
n66_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n68_lit_string_α
.Lx225_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]                       # lit_integer
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx                    # N
                        add              rsp, 16
                                                                                        jmp   n68_lit_string_α
n67_assign_β:
                        add              rsp, 16
                                                                                        jmp   n68_lit_string_α
#=======================================================================================================================
# 	'abcde' TAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 1                       # lit_string
                        mov              dword ptr [rsp + 180], 5                       # lit_string
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 184], rax                     # lit_string
                                                                                        jmp   n69_var_α
n68_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n76_var_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]                    # N
                        mov              qword ptr [rsp + 160], rax                     # N
                        mov              qword ptr [rsp + 168], rdx                     # N
                                                                                        jmp   n70_coerce_integer_α
n69_var_β:
                        add              rsp, 192
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_integer_α:
                        lea              rdi, [rsp + 160]                               # in
                        lea              rsi, [rsp + 144]                               # out
                        mov              rdx, 12058807                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n71_match_head_α
n70_coerce_integer_β:
                        add              rsp, 192
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 176]                     # lo
                        mov              rsi, qword ptr [rsp + 184]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx232_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n72_match_assign_save_α
n71_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx232_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx232_1
                                                                                        jmp   .Lx232_0
.Lx232_1:
                        mov              r10, qword ptr [1879048192]
.Lx232_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx232_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n73_match_tab_α
n72_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n71_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, qword ptr [rsp + 152]
                        cmp              r14d, eax
                                                                                        jle   .Lx235_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_match_head_β
.Lx235_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx235_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_match_head_β
.Lx235_240:
                        mov              r14d, eax
                                                                                        jmp   n74_match_assign_cond_α
n73_match_tab_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_assign_cond_α:
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
                                                                                        jmp   n75_match_release_α
n74_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n73_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx239_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx239_9
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
.Lx239_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx239_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx239_1:
                        test             rax, rax
                                                                                        je    .Lx239_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx239_3]
                        lea              rdx, [rip + .Lx239_4]
                                                                                        jmp   rax
.Lx239_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx239_1
.Lx239_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx239_1
.Lx239_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx239_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx239_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n76_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n77_assign_α
n76_var_β:
                        add              rsp, 16
                                                                                        jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx241_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n78_lit_integer_α
n77_assign_β:
                        add              rsp, 16
                                                                                        jmp   n78_lit_integer_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 2
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n79_assign_α
n78_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
.Lx242_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]                       # lit_integer
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx                    # N
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
n79_assign_β:
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
#=======================================================================================================================
# 	'abcde' RTAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 1                       # lit_string
                        mov              dword ptr [rsp + 180], 5                       # lit_string
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 184], rax                     # lit_string
                                                                                        jmp   n81_var_α
n80_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n88_var_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]                    # N
                        mov              qword ptr [rsp + 160], rax                     # N
                        mov              qword ptr [rsp + 168], rdx                     # N
                                                                                        jmp   n82_coerce_integer_α
n81_var_β:
                        add              rsp, 192
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_integer_α:
                        lea              rdi, [rsp + 160]                               # in
                        lea              rsi, [rsp + 144]                               # out
                        mov              rdx, 11927733                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n83_match_head_α
n82_coerce_integer_β:
                        add              rsp, 192
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 176]                     # lo
                        mov              rsi, qword ptr [rsp + 184]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx249_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n84_match_assign_save_α
n83_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx249_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx249_1
                                                                                        jmp   .Lx249_0
.Lx249_1:
                        mov              r10, qword ptr [1879048192]
.Lx249_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx249_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n85_match_rtab_α
n84_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n83_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n85_match_rtab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, qword ptr [rsp + 152]
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jle   .Lx252_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n83_match_head_β
.Lx252_240:
                        mov              r14d, ecx
                                                                                        jmp   n86_match_assign_cond_α
n85_match_rtab_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n83_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n86_match_assign_cond_α:
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
                                                                                        jmp   n87_match_release_α
n86_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n85_match_rtab_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx256_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx256_9
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
.Lx256_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx256_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx256_1:
                        test             rax, rax
                                                                                        je    .Lx256_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx256_3]
                        lea              rdx, [rip + .Lx256_4]
                                                                                        jmp   rax
.Lx256_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx256_1
.Lx256_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx256_1
.Lx256_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx256_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx256_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n88_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n89_assign_α
n88_var_β:
                        add              rsp, 16
                                                                                        jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx258_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n90_lit_integer_α
n89_assign_β:
                        add              rsp, 16
                                                                                        jmp   n90_lit_integer_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 3
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n91_assign_α
n90_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n92_lit_string_α
.Lx259_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]                       # lit_integer
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx                    # N
                        add              rsp, 16
                                                                                        jmp   n92_lit_string_α
n91_assign_β:
                        add              rsp, 16
                                                                                        jmp   n92_lit_string_α
#=======================================================================================================================
# 	'abcde' RPOS(N) LEN(1) . W
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 1856
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 704], 0                       # stmt_claim
                        mov              qword ptr [rsp + 712], 0                       # stmt_claim
                        mov              qword ptr [rsp + 720], 0                       # stmt_claim
                        mov              qword ptr [rsp + 728], 0                       # stmt_claim
                        mov              qword ptr [rsp + 736], 0                       # stmt_claim
                        mov              qword ptr [rsp + 744], 0                       # stmt_claim
                        mov              qword ptr [rsp + 752], 0                       # stmt_claim
                        mov              qword ptr [rsp + 760], 0                       # stmt_claim
                        mov              qword ptr [rsp + 768], 0                       # stmt_claim
                        mov              qword ptr [rsp + 776], 0                       # stmt_claim
                        mov              qword ptr [rsp + 784], 0                       # stmt_claim
                        mov              qword ptr [rsp + 792], 0                       # stmt_claim
                        mov              qword ptr [rsp + 800], 0                       # stmt_claim
                        mov              qword ptr [rsp + 808], 0                       # stmt_claim
                        mov              qword ptr [rsp + 816], 0                       # stmt_claim
                        mov              qword ptr [rsp + 824], 0                       # stmt_claim
                        mov              qword ptr [rsp + 832], 0                       # stmt_claim
                        mov              qword ptr [rsp + 840], 0                       # stmt_claim
                        mov              qword ptr [rsp + 848], 0                       # stmt_claim
                        mov              qword ptr [rsp + 856], 0                       # stmt_claim
                        mov              qword ptr [rsp + 864], 0                       # stmt_claim
                        mov              qword ptr [rsp + 872], 0                       # stmt_claim
                        mov              qword ptr [rsp + 880], 0                       # stmt_claim
                        mov              qword ptr [rsp + 888], 0                       # stmt_claim
                        mov              qword ptr [rsp + 896], 0                       # stmt_claim
                        mov              qword ptr [rsp + 904], 0                       # stmt_claim
                        mov              qword ptr [rsp + 912], 0                       # stmt_claim
                        mov              qword ptr [rsp + 920], 0                       # stmt_claim
                        mov              qword ptr [rsp + 928], 0                       # stmt_claim
                        mov              qword ptr [rsp + 936], 0                       # stmt_claim
                        mov              qword ptr [rsp + 944], 0                       # stmt_claim
                        mov              qword ptr [rsp + 952], 0                       # stmt_claim
                        mov              qword ptr [rsp + 960], 0                       # stmt_claim
                        mov              qword ptr [rsp + 968], 0                       # stmt_claim
                        mov              qword ptr [rsp + 976], 0                       # stmt_claim
                        mov              qword ptr [rsp + 984], 0                       # stmt_claim
                        mov              qword ptr [rsp + 992], 0                       # stmt_claim
                        mov              qword ptr [rsp + 1000], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1008], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1016], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1024], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1032], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1040], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1048], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1056], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1064], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1072], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1080], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1088], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1096], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1104], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1112], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1120], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1128], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1136], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1144], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1152], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1160], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1168], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1176], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1184], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1192], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1200], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1208], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1216], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1224], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1232], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1240], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1248], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1256], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1264], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1272], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1280], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1288], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1296], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1304], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1312], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1320], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1328], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1336], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1344], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1352], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1360], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1368], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1376], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1384], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1392], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1400], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1408], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1416], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1424], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1432], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1440], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1448], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1456], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1464], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1472], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1480], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1488], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1496], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1504], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1512], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1520], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1528], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1536], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1544], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1552], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1560], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1568], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1576], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1584], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1592], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1600], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1608], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1616], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1624], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1632], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1640], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1648], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1656], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1664], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1672], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1680], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1688], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1696], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1704], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1712], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1720], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1728], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1736], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1744], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1752], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1760], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1768], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1776], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1784], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1792], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1800], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1808], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1816], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1824], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1832], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1840], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1848], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1840], 1                      # lit_string
                        mov              dword ptr [rsp + 1844], 5                      # lit_string
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 1848], rax                    # lit_string
                                                                                        jmp   n93_var_α
n92_lit_string_β:
                        add              rsp, 1856
                                                                                        jmp   n102_var_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]                    # N
                        mov              qword ptr [rsp + 1824], rax                    # N
                        mov              qword ptr [rsp + 1832], rdx                    # N
                                                                                        jmp   n94_coerce_integer_α
n93_var_β:
                        add              rsp, 1856
                                                                                        jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_integer_α:
                        lea              rdi, [rsp + 1824]                              # in
                        lea              rsi, [rsp + 1808]                              # out
                        mov              rdx, 12189881                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n95_match_head_α
n94_coerce_integer_β:
                        add              rsp, 1856
                                                                                        jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_match_head_α:
                        mov              qword ptr [rsp + 1712], r13                    # outer_Σ
                        mov              qword ptr [rsp + 1720], r14                    # outer_δ
                        mov              qword ptr [rsp + 1728], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1736], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 1840]                    # lo
                        mov              rsi, qword ptr [rsp + 1848]                    # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx266_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n96_match_sequence_α
n95_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx266_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx266_1
                                                                                        jmp   .Lx266_0
.Lx266_1:
                        mov              r10, qword ptr [1879048192]
.Lx266_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx266_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1712]
                        mov              r14, qword ptr [rsp + 1720]
                        mov              r15, qword ptr [rsp + 1728]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 1736]                    # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 1856
                                                                                        jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_match_sequence_α:
                                                                                        jmp   n101_match_rpos_α
n96_match_sequence_as:
                                                                                        jmp   n97_match_release_α
n96_match_sequence_β:
                                                                                        jmp   n100_match_assign_cond_β
n96_match_sequence_af:
                                                                                        jmp   n95_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx270_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx270_9
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
.Lx270_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx270_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx270_1:
                        test             rax, rax
                                                                                        je    .Lx270_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4]
                                                                                        jmp   rax
.Lx270_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx270_1
.Lx270_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx270_1
.Lx270_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx270_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx270_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1712]
                        mov              r14, qword ptr [rsp + 1720]
                        mov              r15, qword ptr [rsp + 1728]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 1736]                    # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 1856
                                                                                        jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n99_match_len_α
n98_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n95_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx273_240
                        add              rsp, 16
                                                                                        jmp   n95_match_head_β
.Lx273_240:
                        add              r14d, 1
                                                                                        jmp   n100_match_assign_cond_α
n99_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n95_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_assign_cond_α:
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
                                                                                        jmp   n97_match_release_α
n100_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n99_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n101_match_rpos_α:
                        mov              rax, qword ptr [rsp + 1816]
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n95_match_head_β
                                                                                        jmp   n98_match_assign_save_α
n101_match_rpos_β:
                                                                                        jmp   n95_match_head_β
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n103_assign_α
n102_var_β:
                        add              rsp, 16
                                                                                        jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx278_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n104_lit_integer_α
n103_assign_β:
                        add              rsp, 16
                                                                                        jmp   n104_lit_integer_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = 2
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n105_assign_α
n104_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
.Lx279_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]                       # lit_integer
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx                    # N
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
n105_assign_β:
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
#=======================================================================================================================
# 	'abcde' LEN(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 2080
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 704], 0                       # stmt_claim
                        mov              qword ptr [rsp + 712], 0                       # stmt_claim
                        mov              qword ptr [rsp + 720], 0                       # stmt_claim
                        mov              qword ptr [rsp + 728], 0                       # stmt_claim
                        mov              qword ptr [rsp + 736], 0                       # stmt_claim
                        mov              qword ptr [rsp + 744], 0                       # stmt_claim
                        mov              qword ptr [rsp + 752], 0                       # stmt_claim
                        mov              qword ptr [rsp + 760], 0                       # stmt_claim
                        mov              qword ptr [rsp + 768], 0                       # stmt_claim
                        mov              qword ptr [rsp + 776], 0                       # stmt_claim
                        mov              qword ptr [rsp + 784], 0                       # stmt_claim
                        mov              qword ptr [rsp + 792], 0                       # stmt_claim
                        mov              qword ptr [rsp + 800], 0                       # stmt_claim
                        mov              qword ptr [rsp + 808], 0                       # stmt_claim
                        mov              qword ptr [rsp + 816], 0                       # stmt_claim
                        mov              qword ptr [rsp + 824], 0                       # stmt_claim
                        mov              qword ptr [rsp + 832], 0                       # stmt_claim
                        mov              qword ptr [rsp + 840], 0                       # stmt_claim
                        mov              qword ptr [rsp + 848], 0                       # stmt_claim
                        mov              qword ptr [rsp + 856], 0                       # stmt_claim
                        mov              qword ptr [rsp + 864], 0                       # stmt_claim
                        mov              qword ptr [rsp + 872], 0                       # stmt_claim
                        mov              qword ptr [rsp + 880], 0                       # stmt_claim
                        mov              qword ptr [rsp + 888], 0                       # stmt_claim
                        mov              qword ptr [rsp + 896], 0                       # stmt_claim
                        mov              qword ptr [rsp + 904], 0                       # stmt_claim
                        mov              qword ptr [rsp + 912], 0                       # stmt_claim
                        mov              qword ptr [rsp + 920], 0                       # stmt_claim
                        mov              qword ptr [rsp + 928], 0                       # stmt_claim
                        mov              qword ptr [rsp + 936], 0                       # stmt_claim
                        mov              qword ptr [rsp + 944], 0                       # stmt_claim
                        mov              qword ptr [rsp + 952], 0                       # stmt_claim
                        mov              qword ptr [rsp + 960], 0                       # stmt_claim
                        mov              qword ptr [rsp + 968], 0                       # stmt_claim
                        mov              qword ptr [rsp + 976], 0                       # stmt_claim
                        mov              qword ptr [rsp + 984], 0                       # stmt_claim
                        mov              qword ptr [rsp + 992], 0                       # stmt_claim
                        mov              qword ptr [rsp + 1000], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1008], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1016], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1024], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1032], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1040], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1048], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1056], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1064], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1072], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1080], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1088], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1096], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1104], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1112], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1120], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1128], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1136], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1144], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1152], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1160], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1168], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1176], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1184], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1192], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1200], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1208], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1216], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1224], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1232], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1240], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1248], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1256], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1264], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1272], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1280], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1288], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1296], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1304], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1312], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1320], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1328], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1336], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1344], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1352], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1360], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1368], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1376], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1384], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1392], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1400], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1408], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1416], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1424], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1432], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1440], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1448], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1456], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1464], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1472], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1480], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1488], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1496], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1504], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1512], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1520], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1528], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1536], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1544], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1552], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1560], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1568], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1576], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1584], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1592], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1600], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1608], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1616], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1624], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1632], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1640], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1648], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1656], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1664], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1672], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1680], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1688], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1696], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1704], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1712], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1720], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1728], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1736], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1744], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1752], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1760], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1768], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1776], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1784], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1792], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1800], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1808], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1816], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1824], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1832], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1840], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1848], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1856], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1864], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1872], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1880], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1888], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1896], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1904], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1912], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1920], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1928], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1936], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1944], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1952], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1960], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1968], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1976], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1984], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1992], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2000], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2008], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2016], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2024], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2032], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2040], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2048], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2056], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2064], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2072], 0                      # stmt_claim
                        mov              qword ptr [rsp + 2064], 1                      # lit_string
                        mov              dword ptr [rsp + 2068], 5                      # lit_string
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 2072], rax                    # lit_string
                                                                                        jmp   n107_var_α
n106_lit_string_β:
                        add              rsp, 2080
                                                                                        jmp   n114_var_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]                    # N
                        mov              qword ptr [rsp + 2048], rax                    # N
                        mov              qword ptr [rsp + 2056], rdx                    # N
                                                                                        jmp   n108_coerce_integer_α
n107_var_β:
                        add              rsp, 2080
                                                                                        jmp   n114_var_α
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_integer_α:
                        lea              rdi, [rsp + 2048]                              # in
                        lea              rsi, [rsp + 2032]                              # out
                        mov              rdx, 7929976                                   # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n109_match_head_α
n108_coerce_integer_β:
                        add              rsp, 2080
                                                                                        jmp   n114_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_match_head_α:
                        mov              qword ptr [rsp + 1952], r13                    # outer_Σ
                        mov              qword ptr [rsp + 1960], r14                    # outer_δ
                        mov              qword ptr [rsp + 1968], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1976], rax                    # cap_gen
                        mov              rdi, qword ptr [rsp + 2064]                    # lo
                        mov              rsi, qword ptr [rsp + 2072]                    # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx286_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n110_match_assign_save_α
n109_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx286_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx286_1
                                                                                        jmp   .Lx286_0
.Lx286_1:
                        mov              r10, qword ptr [1879048192]
.Lx286_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx286_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1952]
                        mov              r14, qword ptr [rsp + 1960]
                        mov              r15, qword ptr [rsp + 1968]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 1976]                    # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 2080
                                                                                        jmp   n114_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n111_match_len_α
n110_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n109_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n111_match_len_α:
                        mov              rcx, qword ptr [rsp + 2040]
                        mov              eax, r14d
                        add              eax, ecx
                        cmp              eax, r15d
                                                                                        jle   .Lx289_240
                        add              rsp, 16
                                                                                        jmp   n109_match_head_β
.Lx289_240:
                        add              r14d, ecx
                                                                                        jmp   n112_match_assign_cond_α
n111_match_len_β:
                        mov              rcx, qword ptr [rsp + 2040]
                        sub              r14d, ecx
                        add              rsp, 16
                                                                                        jmp   n109_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n112_match_assign_cond_α:
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
                                                                                        jmp   n113_match_release_α
n112_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n111_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n113_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx293_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx293_9
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
.Lx293_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx293_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx293_1:
                        test             rax, rax
                                                                                        je    .Lx293_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx293_3]
                        lea              rdx, [rip + .Lx293_4]
                                                                                        jmp   rax
.Lx293_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx293_1
.Lx293_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx293_1
.Lx293_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx293_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx293_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1952]
                        mov              r14, qword ptr [rsp + 1960]
                        mov              r15, qword ptr [rsp + 1968]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 1976]                    # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 2080
                                                                                        jmp   n114_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n115_assign_α
n114_var_β:
                        add              rsp, 16
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx295_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n116_lit_string_α
n115_assign_β:
                        add              rsp, 16
                                                                                        jmp   n116_lit_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	N = '2'
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n117_assign_α
n116_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              qword ptr [1879052336], rax                    # N
                        mov              qword ptr [1879052344], rdx                    # N
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_α
n117_assign_β:
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_α
#=======================================================================================================================
# 	'abcde' TAB(N) . W
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 1                       # lit_string
                        mov              dword ptr [rsp + 180], 5                       # lit_string
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 184], rax                     # lit_string
                                                                                        jmp   n119_var_α
n118_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n126_var_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [1879052336]                    # N
                        mov              rdx, qword ptr [1879052344]                    # N
                        mov              qword ptr [rsp + 160], rax                     # N
                        mov              qword ptr [rsp + 168], rdx                     # N
                                                                                        jmp   n120_coerce_integer_α
n119_var_β:
                        add              rsp, 192
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_integer_α:
                        lea              rdi, [rsp + 160]                               # in
                        lea              rsi, [rsp + 144]                               # out
                        mov              rdx, 12058807                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n121_match_head_α
n120_coerce_integer_β:
                        add              rsp, 192
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 176]                     # lo
                        mov              rsi, qword ptr [rsp + 184]                     # hi
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx303_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n122_match_assign_save_α
n121_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx303_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx303_1
                                                                                        jmp   .Lx303_0
.Lx303_1:
                        mov              r10, qword ptr [1879048192]
.Lx303_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx303_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n123_match_tab_α
n122_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n121_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_tab_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              rax, qword ptr [rsp + 152]
                        cmp              r14d, eax
                                                                                        jle   .Lx306_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n121_match_head_β
.Lx306_239:
                        cmp              r15d, eax
                                                                                        jge   .Lx306_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n121_match_head_β
.Lx306_240:
                        mov              r14d, eax
                                                                                        jmp   n124_match_assign_cond_α
n123_match_tab_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n121_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n124_match_assign_cond_α:
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
                                                                                        jmp   n125_match_release_α
n124_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n123_match_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n125_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx310_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx310_9
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
.Lx310_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx310_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx310_1:
                        test             rax, rax
                                                                                        je    .Lx310_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx310_3]
                        lea              rdx, [rip + .Lx310_4]
                                                                                        jmp   rax
.Lx310_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx310_1
.Lx310_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx310_1
.Lx310_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx310_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx310_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n126_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax                       # W
                        mov              qword ptr [rsp + 8], rdx                       # W
                                                                                        jmp   n127_assign_α
n126_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              rdi, qword ptr [rip + .Lx312_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n127_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
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
.S0:                    .string          "W"
.S1:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
