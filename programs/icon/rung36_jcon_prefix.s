                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prefix_α
proc_prefix_α:
                        .global          proc_prefix_α
                        .global          proc_prefix_β
                        .global          proc_prefix_γ
                        .global          proc_prefix_ω
                        sub              rsp, 432
                        mov              [rsp + 408], rcx
                        mov              [rsp + 416], rdx
                        mov              [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 400
                        call             rt_jmp_frame_lexprep2@PLT
proc_prefix_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
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
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n3_assign_α
n1_call_proc_staged_β:
                                                                                        jmp   n2_disjunction_α
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "strip"
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n5_var_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx19_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n4_return_α
.Lx19_0:
                        cmp              eax, 1
                                                                                        jne   .Lx19_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n4_return_α
.Lx19_1:
                        cmp              eax, 2
                                                                                        jne   .Lx19_2
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n4_return_α
.Lx19_2:
                                                                                        jmp   n4_return_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_β
                        cmp              eax, 1
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_af
n2_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n7_var_α
                        cmp              eax, 2
                                                                                        je    n8_var_α
                                                                                        jmp   proc_prefix_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_prefix_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n6_disjunction_α
n5_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n11_lit_charset_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx25_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n9_call_proc_staged_α
.Lx25_0:
                        cmp              eax, 1
                                                                                        jne   .Lx25_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n9_call_proc_staged_α
.Lx25_1:
                                                                                        jmp   n9_call_proc_staged_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n12_lit_charset_α
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n13_lit_charset_α
n7_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n2_disjunction_as
n8_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 144]
                        call             proc_lassoc_dcα
                                                                                        jmp   .Lx31_2
.Lx31_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_β
                                                                                        jmp   n2_disjunction_as
n9_call_proc_staged_β:
                                                                                        jmp   n6_disjunction_β
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "lassoc"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α:
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 288]
                        call             proc_rassoc_dcα
                                                                                        jmp   .Lx33_2
.Lx33_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_as
n10_call_proc_staged_β:
                                                                                        jmp   n2_disjunction_af
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "rassoc"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_charset_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], -1
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n6_disjunction_as
n11_lit_charset_β:
                                                                                        jmp   n6_disjunction_af
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "+-"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_charset_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              dword ptr [rbp + 196], -1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n6_disjunction_as
n12_lit_charset_β:
                                                                                        jmp   n6_disjunction_af
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "*/"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_charset_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n10_call_proc_staged_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_β:
                                                                                        jmp   proc_prefix_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 408]
                        lea              rsp, [rbp + 432]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_ω:
                        mov              rax, [rbp + 416]
                        lea              rsp, [rbp + 432]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prefix_dcα:
                        pop              r11
                        sub              rsp, 448
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 400], r11
                        lea              rax, [rip + .Lx37_2]
                        mov              qword ptr [rbp + 408], rax
                        lea              rax, [rip + .Lx37_3]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 400
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prefix_α_body
.Lx37_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx37_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_strip_α
proc_strip_α:
                        .global          proc_strip_α
                        .global          proc_strip_β
                        .global          proc_strip_γ
                        .global          proc_strip_ω
                        sub              rsp, 432
                        mov              [rsp + 408], rcx
                        mov              [rsp + 416], rdx
                        mov              [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 400
                        call             rt_jmp_frame_lexprep2@PLT
proc_strip_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n39_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n39_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n42_return_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n43_scan_match_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n42_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_strip_γ
#-----------------------------------------------------------------------------------------------------------------------
n43_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx64_239
                        add              rsp, 16
                                                                                        jmp   n45_scan_α
.Lx64_239:
                        mov              rdi, qword ptr [rip + .Lx64_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx64_240
                        add              rsp, 16
                                                                                        jmp   n45_scan_α
.Lx64_240:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n44_scan_tab_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 344]
                        cmp              rax, 1
                                                                                        jge   .Lx66_0
                        add              rax, r15
                        add              rax, 1
.Lx66_0:
                        cmp              rax, 1
                                                                                        jge   .Lx66_239
                        add              rsp, 16
                                                                                        jmp   n45_scan_α
.Lx66_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx66_240
                        add              rsp, 16
                                                                                        jmp   n45_scan_α
.Lx66_240:
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
                                                                                        jmp   n46_var_α
n44_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n40_var_α
n45_scan_β:
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n47_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_charset_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n48_scan_bal_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n48_scan_bal_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n49_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 264]
                        cmp              rax, 1
                                                                                        jge   .Lx75_0
                        add              rax, r15
                        add              rax, 1
.Lx75_0:
                        cmp              rax, 1
                                                                                        jge   .Lx75_239
                        add              rsp, 16
                                                                                        jmp   n48_scan_bal_β
.Lx75_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx75_240
                        add              rsp, 16
                                                                                        jmp   n48_scan_bal_β
.Lx75_240:
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
                                                                                        jmp   n50_rev_assign_α
n49_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n48_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n50_rev_assign_α:
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
                                                                                        jmp   n51_lit_integer_α
n50_rev_assign_β:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n48_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n52_scan_pos_α
.Lx77_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n52_scan_pos_α:
                        mov              rax, -1
                        cmp              rax, 1
                                                                                        jge   .Lx79_0
                        add              rax, r15
                        add              rax, 1
.Lx79_0:
                        cmp              rax, 1
                                                                                        jl    n50_rev_assign_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n50_rev_assign_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n50_rev_assign_β
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n53_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n53_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n54_scan_α
n53_conjunction_β:
                                                                                        jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n54_scan_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n38_var_α
n54_scan_β:
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_β:
                                                                                        jmp   proc_strip_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 408]
                        lea              rsp, [rbp + 432]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_ω:
                        mov              rax, [rbp + 416]
                        lea              rsp, [rbp + 432]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_strip_dcα:
                        pop              r11
                        sub              rsp, 448
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 400], r11
                        lea              rax, [rip + .Lx83_2]
                        mov              qword ptr [rbp + 408], rax
                        lea              rax, [rip + .Lx83_3]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 400
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_strip_α_body
.Lx83_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx83_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lassoc_α
proc_lassoc_α:
                        .global          proc_lassoc_α
                        .global          proc_lassoc_β
                        .global          proc_lassoc_γ
                        .global          proc_lassoc_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_lassoc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n85_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n85_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n89_scan_bal_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n91_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n89_scan_bal_α:
                        mov              qword ptr [rbp + 256], r14
                        mov              qword ptr [rbp + 264], 0
.Lx106_0:
                        mov              rax, qword ptr [rbp + 256]
                        cmp              rax, r15
                                                                                        jge   n90_scan_α
                        mov              rdx, qword ptr [rbp + 264]
                        cmp              rdx, 0
                                                                                        jne   .Lx106_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 280]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx106_1
                        mov              qword ptr [rbp + 240], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n92_assign_α
.Lx106_1:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40
                                                                                        jne   .Lx106_2
                        inc              qword ptr [rbp + 264]
                                                                                        jmp   .Lx106_3
.Lx106_2:
                        cmp              rsi, 41
                                                                                        jne   .Lx106_3
                        mov              rdx, qword ptr [rbp + 264]
                        sub              rdx, 1
                        mov              qword ptr [rbp + 264], rdx
                        cmp              rdx, 0
                                                                                        jl    n90_scan_α
.Lx106_3:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx106_0
n89_scan_bal_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx106_0
#-----------------------------------------------------------------------------------------------------------------------
n90_scan_α:
                        lea              rdi, [rbp + 176]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 176]
                        mov              r14, qword ptr [rbp + 184]
                        mov              r15, qword ptr [rbp + 192]
                                                                                        jmp   n86_var_α
n90_scan_β:
                                                                                        jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_unop_test_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 99
                                                                                        je    proc_lassoc_ω
                        cmp              eax, 0
                                                                                        je    proc_lassoc_ω
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n93_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n89_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 128]
                        call             proc_form_dcα
                                                                                        jmp   .Lx112_2
.Lx112_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lassoc_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lassoc_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 320], r11
                        lea              rax, [rip + .Lx114_2]
                        mov              qword ptr [rbp + 328], rax
                        lea              rax, [rip + .Lx114_3]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 304
                        mov              edx, 320
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_lassoc_α_body
.Lx114_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx114_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_rassoc_α
proc_rassoc_α:
                        .global          proc_rassoc_α
                        .global          proc_rassoc_β
                        .global          proc_rassoc_γ
                        .global          proc_rassoc_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 272
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_rassoc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
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
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
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
                                                                                        jge   n120_scan_α
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
                        mov              qword ptr [rbp + 208], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n121_scan_α
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
                                                                                        jl    n120_scan_α
.Lx133_3:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx133_0
n119_scan_bal_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx133_0
#-----------------------------------------------------------------------------------------------------------------------
n120_scan_α:
                        lea              rdi, [rbp + 144]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   proc_rassoc_ω
n120_scan_β:
                                                                                        jmp   proc_rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_scan_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 144]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   n122_call_proc_staged_α
n121_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n119_scan_bal_β
                                                                                        jmp   proc_rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 176]
                        call             proc_form_dcα
                                                                                        jmp   .Lx139_2
.Lx139_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n121_scan_β
                                                                                        jmp   n123_return_α
n122_call_proc_staged_β:
                                                                                        jmp   n121_scan_β
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "form"
#-----------------------------------------------------------------------------------------------------------------------
n123_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_rassoc_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_β:
                                                                                        jmp   proc_rassoc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 280]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rassoc_dcα:
                        pop              r11
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 272], r11
                        lea              rax, [rip + .Lx141_2]
                        mov              qword ptr [rbp + 280], rax
                        lea              rax, [rip + .Lx141_3]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 272
                        mov              edx, 272
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_rassoc_α_body
.Lx141_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx141_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_form_α
proc_form_α:
                        .global          proc_form_α
                        .global          proc_form_β
                        .global          proc_form_γ
                        .global          proc_form_ω
                        sub              rsp, 688
                        mov              [rsp + 664], rcx
                        mov              [rsp + 672], rdx
                        mov              [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
proc_form_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n143_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n147_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n149_binop_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n147_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 584]
                        cmp              rax, 1
                                                                                        jge   .Lx180_0
                        add              rax, r15
                        add              rax, 1
.Lx180_0:
                        cmp              rax, 1
                                                                                        jge   .Lx180_239
                        add              rsp, 16
                                                                                        jmp   n148_lit_integer_α
.Lx180_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx180_240
                        add              rsp, 16
                                                                                        jmp   n148_lit_integer_α
.Lx180_240:
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
                                                                                        jmp   n150_assign_α
n147_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n151_scan_move_α
.Lx181_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n151_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx185_239
                        add              rsp, 16
                                                                                        jmp   n154_lit_integer_α
.Lx185_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx185_240
                        add              rsp, 16
                                                                                        jmp   n154_lit_integer_α
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
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n153_assign_α
n151_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n154_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n155_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n154_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n156_scan_tab_α
.Lx189_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        call             proc_prefix_dcα
                                                                                        jmp   .Lx191_2
.Lx191_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_form_ω
                                                                                        jmp   n157_binop_α
n155_call_proc_staged_β:
                                                                                        jmp   proc_form_ω
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n156_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx193_0
                        add              rax, r15
                        add              rax, 1
.Lx193_0:
                        cmp              rax, 1
                                                                                        jge   .Lx193_239
                        add              rsp, 16
                                                                                        jmp   n159_scan_α
.Lx193_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx193_240
                        add              rsp, 16
                                                                                        jmp   n159_scan_α
.Lx193_240:
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
                                                                                        jmp   n158_assign_α
n156_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n159_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n161_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n159_scan_α:
                        lea              rdi, [rbp + 336]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n144_var_α
n159_scan_β:
                                                                                        jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n162_binop_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n161_conjunction_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n163_scan_α
n161_conjunction_β:
                                                                                        jmp   n159_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n163_scan_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n144_var_α
n163_scan_β:
                                                                                        jmp   n144_var_α
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
                        cmp              eax, 99
                                                                                        je    proc_form_ω
                                                                                        jmp   n166_binop_α
n165_call_proc_staged_β:
                                                                                        jmp   proc_form_ω
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "prefix"
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n167_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n168_binop_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 664]
                        lea              rsp, [rbp + 688]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_form_ω:
                        mov              rax, [rbp + 672]
                        lea              rsp, [rbp + 688]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_form_dcα:
                        pop              r11
                        sub              rsp, 704
                        mov              qword ptr [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 656], r11
                        lea              rax, [rip + .Lx211_2]
                        mov              qword ptr [rbp + 664], rax
                        lea              rax, [rip + .Lx211_3]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 608
                        mov              edx, 656
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_form_α_body
.Lx211_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -688
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx211_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -688
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
                        sub              rsp, 136
                        mov              rdi, rsp
                        mov              ecx, 136
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn216:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 112]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
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
                        cmp              eax, 99
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
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n212_call_builtin_icon_α
n214_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 136
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 136
                        ret
                        .section         .rodata
.S0:                    .string          "bb_scan_bal: unhandled (needs nonempty bracket-free literal c1 + descr flat-chain slot)"
                        .text
                        .section         .note.GNU-stack,"",@progbits
