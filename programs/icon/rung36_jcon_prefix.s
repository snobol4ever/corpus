                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prefix_α
proc_prefix_α:
proc_prefix_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 368
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:
                        lea              rsi, [rbp + 384]
                        call             proc_strip_dcα
                                                                                        jmp   .Lx17_2
.Lx17_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n3_disjunction_α
                                                                                        jmp   n2_assign_α
n1_call_proc_staged_β:
                                                                                        jmp   n3_disjunction_α
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "strip"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n9_var_α
n3_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx20_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n4_return_α
.Lx20_0:
                        cmp              eax, 1
                                                                                        jne   .Lx20_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n4_return_α
.Lx20_1:
                        cmp              eax, 2
                                                                                        jne   .Lx20_2
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n4_return_α
.Lx20_2:
                                                                                        jmp   n4_return_α
n3_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n10_disjunction_β
                        cmp              eax, 1
                                                                                        je    n3_disjunction_af
                                                                                        jmp   n3_disjunction_af
n3_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n6_var_α
                        cmp              eax, 2
                                                                                        je    n5_var_α
                                                                                        jmp   proc_prefix_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 368
                                                                                        jmp   proc_prefix_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n3_disjunction_as
n5_var_β:
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n7_lit_charset_α
n6_var_β:
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_charset_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n8_call_proc_staged_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_proc_staged_α:
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 288]
                        call             proc_rassoc_dcα
                                                                                        jmp   .Lx28_2
.Lx28_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n3_disjunction_af
                                                                                        jmp   n3_disjunction_as
n8_call_proc_staged_β:
                                                                                        jmp   n3_disjunction_af
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "rassoc"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n10_disjunction_α
n9_var_β:
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n13_lit_charset_α
n10_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx32_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n11_call_proc_staged_α
.Lx32_0:
                        cmp              eax, 1
                                                                                        jne   .Lx32_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n11_call_proc_staged_α
.Lx32_1:
                                                                                        jmp   n11_call_proc_staged_α
n10_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n10_disjunction_af
                                                                                        jmp   n10_disjunction_af
n10_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n12_lit_charset_α
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 144]
                        call             proc_lassoc_dcα
                                                                                        jmp   .Lx34_2
.Lx34_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n10_disjunction_β
                                                                                        jmp   n3_disjunction_as
n11_call_proc_staged_β:
                                                                                        jmp   n10_disjunction_β
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "lassoc"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_charset_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], -1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n10_disjunction_as
n12_lit_charset_β:
                                                                                        jmp   n10_disjunction_af
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "*/"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_charset_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], -1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n10_disjunction_as
n13_lit_charset_β:
                                                                                        jmp   n10_disjunction_af
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "+-"
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_β:
                                                                                        jmp   proc_prefix_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_dcα:
                        pop              r11
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 416], r11
                        lea              rax, [rip + .Lx37_2]
                        mov              qword ptr [rbp + 424], rax
                        lea              rax, [rip + .Lx37_3]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 400                                       # suffix_off
                        mov              edx, 416                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prefix_α_body
.Lx37_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx37_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_strip_α
proc_strip_α:
proc_strip_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 352
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n39_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n39_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 384]                     # lo
                        mov              rsi, qword ptr [rbp + 392]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n41_scan_match_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx61_239
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n52_scan_α
.Lx61_239:
                        mov              rdi, qword ptr [rip + .Lx61_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx61_240
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n52_scan_α
.Lx61_240:
                        mov              qword ptr [rbp + 336], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n42_scan_tab_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n42_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 344]
                        cmp              rax, 1
                                                                                        jge   .Lx63_0
                        add              rax, r15
                        add              rax, 1
.Lx63_0:
                        cmp              rax, 1
                                                                                        jge   .Lx63_239
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n52_scan_α
.Lx63_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx63_240
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n52_scan_α
.Lx63_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n43_var_α
n42_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n52_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n44_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_charset_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n45_scan_bal_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_bal_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n46_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 264]
                        cmp              rax, 1
                                                                                        jge   .Lx70_0
                        add              rax, r15
                        add              rax, 1
.Lx70_0:
                        cmp              rax, 1
                                                                                        jge   .Lx70_239
                        add              rsp, 16
                                                                                        jmp   n45_scan_bal_β
.Lx70_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx70_240
                        add              rsp, 16
                                                                                        jmp   n45_scan_bal_β
.Lx70_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n47_rev_assign_α
n46_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n45_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n47_rev_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        mov              rcx, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 16], rcx
                        mov              qword ptr [rbp + 24], rsi
                        mov              qword ptr [rbp + 176], rcx
                        mov              qword ptr [rbp + 184], rsi
                                                                                        jmp   n48_lit_integer_α
n47_rev_assign_β:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n45_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n49_scan_pos_α
.Lx72_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n49_scan_pos_α:
                        mov              rax, -1
                        cmp              rax, 1
                                                                                        jge   .Lx74_0
                        add              rax, r15
                        add              rax, 1
.Lx74_0:
                        cmp              rax, 1
                                                                                        jl    n47_rev_assign_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n47_rev_assign_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n47_rev_assign_β
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n50_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n50_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n51_scan_α
n50_conjunction_β:
                                                                                        jmp   n52_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n38_var_α
n51_scan_β:
                        add              rsp, 352
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n53_var_α
n52_scan_β:
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n54_return_α
#-----------------------------------------------------------------------------------------------------------------------
n54_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_strip_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_β:
                                                                                        jmp   proc_strip_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_dcα:
                        pop              r11
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 416], r11
                        lea              rax, [rip + .Lx83_2]
                        mov              qword ptr [rbp + 424], rax
                        lea              rax, [rip + .Lx83_3]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 400                                       # suffix_off
                        mov              edx, 416                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_strip_α_body
.Lx83_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx83_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lassoc_α
proc_lassoc_α:
proc_lassoc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        sub              rsp, 144
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n85_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n85_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 288]                     # lo
                        mov              rsi, qword ptr [rbp + 296]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n87_scan_bal_α
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_bal_α:
                        mov              qword ptr [rbp + 256], r14
                        mov              qword ptr [rbp + 264], 0
.Lx102_0:
                        mov              rax, qword ptr [rbp + 256]
                        cmp              rax, r15
                                                                                        jl    .Lx102_239
                        add              rsp, 144
                                                                                        jmp   n89_scan_α
.Lx102_239:
                        mov              rdx, qword ptr [rbp + 264]
                        cmp              rdx, 0
                                                                                        jne   .Lx102_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 280]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx102_1
                        mov              qword ptr [rbp + 240], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n88_assign_α
.Lx102_1:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40
                                                                                        jne   .Lx102_2
                        inc              qword ptr [rbp + 264]
                                                                                        jmp   .Lx102_3
.Lx102_2:
                        cmp              rsi, 41
                                                                                        jne   .Lx102_3
                        mov              rdx, qword ptr [rbp + 264]
                        sub              rdx, 1
                        mov              qword ptr [rbp + 264], rdx
                        cmp              rdx, 0
                                                                                        jge   .Lx102_240
                        add              rsp, 144
                                                                                        jmp   n89_scan_α
.Lx102_240:
.Lx102_3:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx102_0
n87_scan_bal_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx102_0
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n87_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n89_scan_α:
                        lea              rdi, [rbp + 176]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 176]
                        mov              r14, qword ptr [rbp + 184]
                        mov              r15, qword ptr [rbp + 192]
                                                                                        jmp   n90_var_α
n89_scan_β:
                                                                                        jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n92_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n92_unop_test_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 104
                                                                                        je    proc_lassoc_ω
                        cmp              eax, 0
                                                                                        je    proc_lassoc_ω
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n93_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 128]
                        call             proc_form_dcα
                                                                                        jmp   .Lx112_2
.Lx112_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_lassoc_ω
                                                                                        jmp   n94_return_α
n93_call_proc_staged_β:
                                                                                        jmp   proc_lassoc_ω
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "form"
#-----------------------------------------------------------------------------------------------------------------------
n94_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_lassoc_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lassoc_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lassoc_β:
                                                                                        jmp   proc_lassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lassoc_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_lassoc_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_lassoc_dcα:
                        pop              r11
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 336], r11
                        lea              rax, [rip + .Lx114_2]
                        mov              qword ptr [rbp + 344], rax
                        lea              rax, [rip + .Lx114_3]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 304                                       # suffix_off
                        mov              edx, 336                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_lassoc_α_body
.Lx114_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -368
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx114_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -368
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_rassoc_α
proc_rassoc_α:
proc_rassoc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        sub              rsp, 160
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n117_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n117_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 256]                     # lo
                        mov              rsi, qword ptr [rbp + 264]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n119_scan_bal_α
#-----------------------------------------------------------------------------------------------------------------------
n119_scan_bal_α:
                        mov              qword ptr [rbp + 224], r14
                        mov              qword ptr [rbp + 232], 0
.Lx133_0:
                        mov              rax, qword ptr [rbp + 224]
                        cmp              rax, r15
                                                                                        jl    .Lx133_239
                        add              rsp, 160
                                                                                        jmp   n123_scan_α
.Lx133_239:
                        mov              rdx, qword ptr [rbp + 232]
                        cmp              rdx, 0
                                                                                        jne   .Lx133_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 248]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx133_1
                        mov              qword ptr [rbp + 208], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n120_scan_α
.Lx133_1:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40
                                                                                        jne   .Lx133_2
                        inc              qword ptr [rbp + 232]
                                                                                        jmp   .Lx133_3
.Lx133_2:
                        cmp              rsi, 41
                                                                                        jne   .Lx133_3
                        mov              rdx, qword ptr [rbp + 232]
                        sub              rdx, 1
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rdx, 0
                                                                                        jge   .Lx133_240
                        add              rsp, 160
                                                                                        jmp   n123_scan_α
.Lx133_240:
.Lx133_3:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx133_0
n119_scan_bal_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx133_0
#-----------------------------------------------------------------------------------------------------------------------
n120_scan_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 144]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   n121_call_proc_staged_α
n120_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n119_scan_bal_β
                        add              rsp, 160
                                                                                        jmp   proc_rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 176]
                        call             proc_form_dcα
                                                                                        jmp   .Lx137_2
.Lx137_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n120_scan_β
                                                                                        jmp   n122_return_α
n121_call_proc_staged_β:
                                                                                        jmp   n120_scan_β
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "form"
#-----------------------------------------------------------------------------------------------------------------------
n122_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 160
                                                                                        jmp   proc_rassoc_γ
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_α:
                        lea              rdi, [rbp + 144]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   proc_rassoc_ω
n123_scan_β:
                                                                                        jmp   proc_rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_β:
                                                                                        jmp   proc_rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_dcα:
                        pop              r11
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 288], r11
                        lea              rax, [rip + .Lx141_2]
                        mov              qword ptr [rbp + 296], rax
                        lea              rax, [rip + .Lx141_3]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 272                                       # suffix_off
                        mov              edx, 288                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_rassoc_α_body
.Lx141_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx141_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_form_α
proc_form_α:
proc_form_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        sub              rsp, 560
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n143_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 592]                     # lo
                        mov              rsi, qword ptr [rbp + 600]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n145_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n145_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 584]
                        cmp              rax, 1
                                                                                        jge   .Lx177_0
                        add              rax, r15
                        add              rax, 1
.Lx177_0:
                        cmp              rax, 1
                                                                                        jge   .Lx177_239
                        add              rsp, 16
                                                                                        jmp   n147_lit_integer_α
.Lx177_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx177_240
                        add              rsp, 16
                                                                                        jmp   n147_lit_integer_α
.Lx177_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n146_assign_α
n145_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:
                        mov              qword ptr [rbp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n148_scan_move_α
.Lx179_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n148_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx181_239
                        add              rsp, 16
                                                                                        jmp   n150_lit_integer_α
.Lx181_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx181_240
                        add              rsp, 16
                                                                                        jmp   n150_lit_integer_α
.Lx181_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n149_assign_α
n148_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n151_scan_tab_α
.Lx183_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n151_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx185_0
                        add              rax, r15
                        add              rax, 1
.Lx185_0:
                        cmp              rax, 1
                                                                                        jge   .Lx185_239
                        add              rsp, 16
                        add              rsp, 560
                                                                                        jmp   n155_scan_α
.Lx185_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx185_240
                        add              rsp, 16
                        add              rsp, 560
                                                                                        jmp   n155_scan_α
.Lx185_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n152_assign_α
n151_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 560
                                                                                        jmp   n155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n153_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n153_conjunction_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n154_scan_α
n153_conjunction_β:
                                                                                        jmp   n155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n154_scan_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n156_var_α
n154_scan_β:
                                                                                        jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_scan_α:
                        lea              rdi, [rbp + 336]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n156_var_α
n155_scan_β:
                                                                                        jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n158_binop_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:
                        mov              rdi, qword ptr [rbp + 608]                     # a
                        mov              rsi, qword ptr [rbp + 616]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n160_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        call             proc_prefix_dcα
                                                                                        jmp   .Lx199_2
.Lx199_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx199_240
                        add              rsp, 560
                                                                                        jmp   proc_form_ω
.Lx199_240:
                                                                                        jmp   n161_binop_α
n160_call_proc_staged_β:
                                                                                        jmp   proc_form_ω
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:
                        mov              rdi, qword ptr [rbp + 112]                     # a
                        mov              rsi, qword ptr [rbp + 120]                     # a
                        mov              rdx, qword ptr [rbp + 160]                     # b
                        mov              rcx, qword ptr [rbp + 168]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n163_binop_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n163_binop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # a
                        mov              rsi, qword ptr [rbp + 104]                     # a
                        mov              rdx, qword ptr [rbp + 224]                     # b
                        mov              rcx, qword ptr [rbp + 232]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n165_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        lea              rsi, [rbp + 288]
                        call             proc_prefix_dcα
                                                                                        jmp   .Lx206_2
.Lx206_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx206_240
                        add              rsp, 560
                                                                                        jmp   proc_form_ω
.Lx206_240:
                                                                                        jmp   n166_binop_α
n165_call_proc_staged_β:
                                                                                        jmp   proc_form_ω
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:
                        mov              rdi, qword ptr [rbp + 80]                      # a
                        mov              rsi, qword ptr [rbp + 88]                      # a
                        mov              rdx, qword ptr [rbp + 240]                     # b
                        mov              rcx, qword ptr [rbp + 248]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n167_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n168_binop_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:
                        mov              rdi, qword ptr [rbp + 64]                      # a
                        mov              rsi, qword ptr [rbp + 72]                      # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n169_return_α
#-----------------------------------------------------------------------------------------------------------------------
n169_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 560
                                                                                        jmp   proc_form_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_form_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_form_β:
                                                                                        jmp   proc_form_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_form_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_form_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_form_dcα:
                        pop              r11
                        sub              rsp, 720
                        mov              qword ptr [rsp + 696], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 672], r11
                        lea              rax, [rip + .Lx211_2]
                        mov              qword ptr [rbp + 680], rax
                        lea              rax, [rip + .Lx211_3]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 608                                       # suffix_off
                        mov              edx, 672                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_form_α_body
.Lx211_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -704
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx211_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -704
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "prefix"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_prefix_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_prefix_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "strip"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_strip_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_strip_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "lassoc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_lassoc_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_lassoc_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "rassoc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_rassoc_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_rassoc_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "form"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_form_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_form_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn216:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]                         # fn
                        lea              rsi, [rsp + 112]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n213_call_proc_staged_α
n212_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        lea              rsi, [rsp + 96]
                        call             proc_prefix_dcα
                                                                                        jmp   .Lx218_2
.Lx218_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n214_call_builtin_icon_α
n213_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]                         # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n212_call_builtin_icon_α
n214_call_builtin_icon_β:
                                                                                        jmp   main_ω
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
.S0:                    .string          "bb_scan_bal: unhandled (needs nonempty bracket-free literal c1 + descr flat-chain slot)"
                        .text
                        .section         .note.GNU-stack,"",@progbits
