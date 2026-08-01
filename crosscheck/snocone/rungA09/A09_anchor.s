                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
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
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 6                         # lit_string
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n1_lit_integer_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rsp + 16], 6                        # lit_integer
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 24], rax                      # lit_integer
                                                                                        jmp   n2_call_α
.Lx22_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn24:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn24]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n3_lit_string_α
n2_call_β:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rsp + 48], 1                        # lit_string
                        mov              dword ptr [rsp + 52], 11                       # lit_string
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 56], rax                      # lit_string
                                                                                        jmp   n4_assign_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx                    # x
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]                    # x
                        mov              qword ptr [rsp + 0], rax                       # x
                        mov              qword ptr [rsp + 8], rdx                       # x
                                                                                        jmp   n6_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 160], r13                     # outer_Σ
                        mov              qword ptr [rsp + 168], r14                     # outer_δ
                        mov              qword ptr [rsp + 176], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 184], rax                     # cap_gen
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
.Lx29_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n7_match_lit_α
n6_match_head_β:
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
                        mov              r13, qword ptr [rsp + 160]
                        mov              r14, qword ptr [rsp + 168]
                        mov              r15, qword ptr [rsp + 176]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 184]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 352
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n6_match_head_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819043176
                                                                                        jne   n6_match_head_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 111
                                                                                        jne   n6_match_head_β
                        add              r14d, 5
                                                                                        jmp   n8_match_release_α
n7_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n6_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_release_α:
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
                        mov              r13, qword ptr [rsp + 160]
                        mov              r14, qword ptr [rsp + 168]
                        mov              r15, qword ptr [rsp + 176]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 184]                     # capgen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rsp + 64], 1                        # lit_string
                        mov              dword ptr [rsp + 68], 17                       # lit_string
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 72], rax                      # lit_string
                                                                                        jmp   n10_assign_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "anchored match ok"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 64]                      # val
                        mov              rdx, qword ptr [rsp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx35_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_var_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rsp + 144], 1                       # lit_string
                        mov              dword ptr [rsp + 148], 5                       # lit_string
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 152], rax                     # lit_string
                                                                                        jmp   n12_assign_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "wrong"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 144]                     # val
                        mov              rdx, qword ptr [rsp + 152]                     # val
                        mov              rdi, qword ptr [rip + .Lx37_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_var_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]                    # x
                        mov              qword ptr [rsp + 0], rax                       # x
                        mov              qword ptr [rsp + 8], rdx                       # x
                                                                                        jmp   n14_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 304], r13                     # outer_Σ
                        mov              qword ptr [rsp + 312], r14                     # outer_δ
                        mov              qword ptr [rsp + 320], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 328], rax                     # cap_gen
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
.Lx40_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n15_match_lit_α
n14_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx40_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx40_1
                                                                                        jmp   .Lx40_0
.Lx40_1:
                        mov              r10, qword ptr [1879048192]
.Lx40_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx40_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 328]                     # capgen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 352
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n14_match_head_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819438967
                                                                                        jne   n14_match_head_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 100
                                                                                        jne   n14_match_head_β
                        add              r14d, 5
                                                                                        jmp   n16_match_release_α
n15_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx44_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_9
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
.Lx44_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx44_1:
                        test             rax, rax
                                                                                        je    .Lx44_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx44_3]
                        lea              rdx, [rip + .Lx44_4]
                                                                                        jmp   rax
.Lx44_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx44_1
.Lx44_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx44_1
.Lx44_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx44_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320]
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 328]                     # capgen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rsp + 208], 1                       # lit_string
                        mov              dword ptr [rsp + 212], 16                      # lit_string
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 216], rax                     # lit_string
                                                                                        jmp   n18_assign_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "should not reach"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 208]                     # val
                        mov              rdx, qword ptr [rsp + 216]                     # val
                        mov              rdi, qword ptr [rip + .Lx46_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 352
                                                                                        jmp   main_γ
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rsp + 288], 1                       # lit_string
                        mov              dword ptr [rsp + 292], 33                      # lit_string
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 296], rax                     # lit_string
                                                                                        jmp   n20_assign_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "anchor prevented mid-string match"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 288]                     # val
                        mov              rdx, qword ptr [rsp + 296]                     # val
                        mov              rdi, qword ptr [rip + .Lx48_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
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
                        .section         .note.GNU-stack,"",@progbits
