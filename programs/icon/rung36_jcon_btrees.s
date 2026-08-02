                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tform_α
proc_tform_α:
proc_tform_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   n32_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        jne   .Lx37_0
                                                                                        jmp   n1_var_α
.Lx37_0:
                                                                                        jmp   n1_var_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 832]
                                                                                        jmp   n1_var_α
n0_disjunction_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n2_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n2_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 800]                     # lo
                        mov              rsi, qword ptr [rbp + 808]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n9_lit_charset_α
n3_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx43_0
                                                                                        jmp   n4_scan_α
.Lx43_0:
                        cmp              eax, 1
                                                                                        jne   .Lx43_1
                                                                                        jmp   n4_scan_α
.Lx43_1:
                                                                                        jmp   n4_scan_α
n3_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        je    n35_scan_α
                                                                                        jmp   n35_scan_α
n3_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 1
                                                                                        je    n6_var_α
                                                                                        jmp   n35_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n4_scan_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                        add              rsp, 848
                                                                                        jmp   proc_tform_ω
n4_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n3_disjunction_β
                        add              rsp, 848
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_conjunction_α:
                                                                                        jmp   n3_disjunction_as
n5_conjunction_β:
                                                                                        jmp   n35_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n7_call_α
n6_var_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn50:               .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]                          # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    proc_tform_ω
                                                                                        jmp   n8_return_α
n7_call_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_return_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], -1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n10_scan_upto_α
n9_lit_charset_β:
                                                                                        jmp   n3_disjunction_af
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_upto_α:
                        mov              qword ptr [rbp + 704], r14
.Lx54_0:
                        mov              rax, qword ptr [rbp + 704]
                        cmp              rax, r15
                                                                                        jge   n3_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx54_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx54_1
                        mov              qword ptr [rbp + 688], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n11_scan_tab_α
.Lx54_1:
                        inc              qword ptr [rbp + 704]
                                                                                        jmp   .Lx54_0
n10_scan_upto_β:
                        inc              qword ptr [rbp + 704]
                                                                                        jmp   .Lx54_0
.Lx54_2:
                        .quad            .Lx54_2_s
.Lx54_2_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 696]
                        cmp              rax, 1
                                                                                        jge   .Lx56_0
                        add              rax, r15
                        add              rax, 1
.Lx56_0:
                        cmp              rax, 1
                                                                                        jge   .Lx56_239
                        add              rsp, 16
                                                                                        jmp   n10_scan_upto_β
.Lx56_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx56_240
                        add              rsp, 16
                                                                                        jmp   n10_scan_upto_β
.Lx56_240:
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
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n12_assign_α
n11_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n10_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n14_scan_move_α
.Lx58_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx60_239
                        add              rsp, 16
                                                                                        jmp   n15_lit_charset_α
.Lx60_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx60_240
                        add              rsp, 16
                                                                                        jmp   n15_lit_charset_α
.Lx60_240:
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
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n15_lit_charset_α
n14_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n15_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_charset_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], -1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n16_scan_bal_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_bal_α:
                        mov              qword ptr [rbp + 576], r14
                        mov              qword ptr [rbp + 584], 0
.Lx63_0:
                        mov              rax, qword ptr [rbp + 576]
                        cmp              rax, r15
                                                                                        jge   n19_lit_integer_α
                        mov              rdx, qword ptr [rbp + 584]
                        cmp              rdx, 0
                                                                                        jne   .Lx63_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx63_4]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx63_1
                        mov              qword ptr [rbp + 560], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n17_scan_tab_α
.Lx63_1:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40
                                                                                        jne   .Lx63_2
                        inc              qword ptr [rbp + 584]
                                                                                        jmp   .Lx63_3
.Lx63_2:
                        cmp              rsi, 41
                                                                                        jne   .Lx63_3
                        mov              rdx, qword ptr [rbp + 584]
                        sub              rdx, 1
                        mov              qword ptr [rbp + 584], rdx
                        cmp              rdx, 0
                                                                                        jl    n19_lit_integer_α
.Lx63_3:
                        inc              qword ptr [rbp + 576]
                                                                                        jmp   .Lx63_0
n16_scan_bal_β:
                        inc              qword ptr [rbp + 576]
                                                                                        jmp   .Lx63_0
.Lx63_4:
                        .quad            .Lx63_4_s
.Lx63_4_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 568]
                        cmp              rax, 1
                                                                                        jge   .Lx65_0
                        add              rax, r15
                        add              rax, 1
.Lx65_0:
                        cmp              rax, 1
                                                                                        jge   .Lx65_239
                        add              rsp, 16
                                                                                        jmp   n16_scan_bal_β
.Lx65_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx65_240
                        add              rsp, 16
                                                                                        jmp   n16_scan_bal_β
.Lx65_240:
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
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n18_assign_α
n17_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n16_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n20_scan_move_α
.Lx67_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx69_239
                        add              rsp, 16
                                                                                        jmp   n21_lit_charset_α
.Lx69_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx69_240
                        add              rsp, 16
                                                                                        jmp   n21_lit_charset_α
.Lx69_240:
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n21_lit_charset_α
n20_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n21_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_charset_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], -1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n22_scan_bal_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_bal_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 440]
                        cmp              rax, 1
                                                                                        jge   .Lx74_0
                        add              rax, r15
                        add              rax, 1
.Lx74_0:
                        cmp              rax, 1
                                                                                        jge   .Lx74_239
                        add              rsp, 16
                                                                                        jmp   n22_scan_bal_β
.Lx74_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx74_240
                        add              rsp, 16
                                                                                        jmp   n22_scan_bal_β
.Lx74_240:
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n24_assign_α
n23_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n22_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 304]
                        call             proc_tform_dcα
                                                                                        jmp   .Lx81_2
.Lx81_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    proc_tform_ω
                                                                                        jmp   n28_var_α
n27_call_proc_staged_β:
                                                                                        jmp   proc_tform_ω
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n29_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 368]
                        call             proc_tform_dcα
                                                                                        jmp   .Lx85_2
.Lx85_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    proc_tform_ω
                                                                                        jmp   n30_call_α
n29_call_proc_staged_β:
                                                                                        jmp   proc_tform_ω
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn87:               .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    proc_tform_ω
                                                                                        jmp   n31_return_α
n30_call_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_return_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n33_unop_test_α
n32_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                                                                                        jmp   n34_return_α
#-----------------------------------------------------------------------------------------------------------------------
n34_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_scan_α:
                        lea              rdi, [rbp + 48]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   proc_tform_ω
n35_scan_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tform_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tform_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tform_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_tform_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_tform_dcα:
                        pop              r11
                        sub              rsp, 992
                        mov              qword ptr [rsp + 968], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 944], r11
                        lea              rax, [rip + .Lx95_2]
                        mov              qword ptr [rbp + 952], rax
                        lea              rax, [rip + .Lx95_3]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 880                                       # suffix_off
                        mov              edx, 944                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tform_α_body
.Lx95_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -976
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx95_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -976
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_walk_α
proc_walk_α:
proc_walk_α_body:
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n102_var_α
n96_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx109_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n97_proc_gen_α
.Lx109_0:
                        cmp              eax, 1
                                                                                        jne   .Lx109_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n97_proc_gen_α
.Lx109_1:
                                                                                        jmp   n97_proc_gen_α
n96_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        je    n96_disjunction_af
                                                                                        jmp   n96_disjunction_af
n96_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 1
                                                                                        je    n99_var_α
                                                                                        jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_proc_gen_α:
                        mov              qword ptr [rbp + 96], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx111_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx111_21
.Lx111_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx111_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx111_1
                        lea              rcx, [rip + .Lx111_3]
                        lea              rdx, [rip + .Lx111_4]
                                                                                        jmp   rax
.Lx111_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx111_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx111_2
.Lx111_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx111_2
.Lx111_4:
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx111_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx111_2
.Lx111_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx111_2
.Lx111_1:
                        call             rt_faildescr@PLT
.Lx111_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n96_disjunction_β
                                                                                        jmp   n98_suspend_α
n97_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "walk"
#-----------------------------------------------------------------------------------------------------------------------
n98_suspend_α:
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 192
                                                                                        jmp   proc_walk_γ
n98_suspend_β:
                                                                                        jmp   n97_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n100_field_get_α
n99_var_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n100_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx116_0]                # fname
                        mov              rsi, qword ptr [rbp + 240]                     # obj
                        mov              rdx, qword ptr [rbp + 248]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n96_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n101_unop_test_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n101_unop_test_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 104
                                                                                        je    n96_disjunction_af
                        cmp              eax, 0
                                                                                        je    n96_disjunction_af
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n96_disjunction_as
n101_unop_test_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n103_field_get_α
n102_var_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n103_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx120_0]                # fname
                        mov              rsi, qword ptr [rbp + 192]                     # obj
                        mov              rdx, qword ptr [rbp + 200]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n96_disjunction_af
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n104_unop_test_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n104_unop_test_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 104
                                                                                        je    n96_disjunction_af
                        cmp              eax, 0
                                                                                        je    n96_disjunction_af
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n96_disjunction_as
n104_unop_test_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n106_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n106_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx124_0]                # fname
                        mov              rsi, qword ptr [rbp + 48]                      # obj
                        mov              rdx, qword ptr [rbp + 56]                      # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    proc_walk_ω
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n107_return_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n107_return_α:
                        lea              rax, [rip + proc_walk_ω]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_walk_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_walk_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_walk_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_walk_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_walk_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_leaves_α
proc_leaves_α:
proc_leaves_α_body:
                        lea              rax, [rip + n129_suspend_β]
                        mov              qword ptr [rbp + 432], rax
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n136_disjunction_α
n126_disjunction_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        jne   .Lx148_0
                                                                                        jmp   n127_disjunction_α
.Lx148_0:
                                                                                        jmp   n127_disjunction_α
n126_disjunction_β:
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n127_disjunction_α
n126_disjunction_af:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n133_var_α
n127_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx150_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n128_proc_gen_α
.Lx150_0:
                        cmp              eax, 1
                                                                                        jne   .Lx150_1
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n128_proc_gen_α
.Lx150_1:
                                                                                        jmp   n128_proc_gen_α
n127_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n127_disjunction_af
                                                                                        jmp   n127_disjunction_af
n127_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n130_var_α
                                                                                        jmp   proc_leaves_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_proc_gen_α:
                        mov              qword ptr [rbp + 64], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx152_20
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx152_21
.Lx152_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 96]                      # v
                        mov              rdx, qword ptr [rbp + 104]                     # v
                        call             rt_arg_stage@PLT
.Lx152_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx152_1
                        lea              rcx, [rip + .Lx152_3]
                        lea              rdx, [rip + .Lx152_4]
                                                                                        jmp   rax
.Lx152_3:
                        mov              qword ptr [rbp + 72], rsp
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx152_5
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx152_2
.Lx152_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx152_2
.Lx152_4:
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx152_6
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx152_2
.Lx152_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx152_2
.Lx152_1:
                        call             rt_faildescr@PLT
.Lx152_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n127_disjunction_β
                                                                                        jmp   n129_suspend_α
n128_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   qword ptr [rsp]
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n129_suspend_α:
                        lea              rax, [rip + n129_suspend_β]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 400
                                                                                        jmp   proc_leaves_γ
n129_suspend_β:
                                                                                        jmp   n128_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n131_field_get_α
n130_var_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n131_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx157_0]                # fname
                        mov              rsi, qword ptr [rbp + 208]                     # obj
                        mov              rdx, qword ptr [rbp + 216]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n127_disjunction_af
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n132_unop_test_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n132_unop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 104
                                                                                        je    n127_disjunction_af
                        cmp              eax, 0
                                                                                        je    n127_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n127_disjunction_as
n132_unop_test_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n134_field_get_α
n133_var_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n134_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx161_0]                # fname
                        mov              rsi, qword ptr [rbp + 160]                     # obj
                        mov              rdx, qword ptr [rbp + 168]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n127_disjunction_af
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n135_unop_test_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n135_unop_test_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 104
                                                                                        je    n127_disjunction_af
                        cmp              eax, 0
                                                                                        je    n127_disjunction_af
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n127_disjunction_as
n135_unop_test_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n140_var_α
n136_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx164_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n126_disjunction_af
.Lx164_0:
                        cmp              eax, 1
                                                                                        jne   .Lx164_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n126_disjunction_af
.Lx164_1:
                                                                                        jmp   n126_disjunction_af
n136_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        je    n136_disjunction_af
                                                                                        jmp   n136_disjunction_af
n136_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n137_var_α
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n138_field_get_α
n137_var_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n138_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx167_0]                # fname
                        mov              rsi, qword ptr [rbp + 416]                     # obj
                        mov              rdx, qword ptr [rbp + 424]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n136_disjunction_af
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n139_unop_test_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n139_unop_test_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 104
                                                                                        je    n136_disjunction_af
                        cmp              eax, 0
                                                                                        je    n136_disjunction_af
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n136_disjunction_as
n139_unop_test_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n141_field_get_α
n140_var_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx171_0]                # fname
                        mov              rsi, qword ptr [rbp + 368]                     # obj
                        mov              rdx, qword ptr [rbp + 376]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n136_disjunction_af
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n142_unop_test_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n142_unop_test_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 104
                                                                                        je    n136_disjunction_af
                        cmp              eax, 0
                                                                                        je    n136_disjunction_af
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n136_disjunction_as
n142_unop_test_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                                                                                        jmp   n144_var_α
n143_var_β:
                                                                                        jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n145_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n145_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx176_0]                # fname
                        mov              rsi, qword ptr [rbp + 272]                     # obj
                        mov              rdx, qword ptr [rbp + 280]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    proc_leaves_ω
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n146_return_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n146_return_α:
                        lea              rax, [rip + proc_leaves_ω]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_leaves_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_leaves_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_leaves_β:
                                                                                        jmp   qword ptr [rbp + 432]
#-----------------------------------------------------------------------------------------------------------------------
proc_leaves_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_leaves_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "node(data,ltree,rtree)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "tform"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tform_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 928
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tform_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "walk"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_walk_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "leaves"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_leaves_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
n178_call_builtin_icon_α:
                        sub              rsp, 496
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
                        .section         .rodata
.Lrkfn194:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 496
                                                                                        jmp   main_ω
.Lx193_240:
                                                                                        jmp   n179_assign_α
n178_call_builtin_icon_β:
                        add              rsp, 496
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        lea              rsi, [rbp + 480]
                        call             proc_tform_dcα
                                                                                        jmp   .Lx199_2
.Lx199_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n183_lit_string_α
                                                                                        jmp   n182_assign_α
n181_call_proc_staged_β:
                                                                                        jmp   n183_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 9
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n184_call_builtin_icon_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "tree walk"
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn203:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n185_var_α
                                                                                        jmp   n185_var_α
n184_call_builtin_icon_β:
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n186_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n186_proc_gen_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx207_21
.Lx207_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx207_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx207_1
                        lea              rcx, [rip + .Lx207_3]
                        lea              rdx, [rip + .Lx207_4]
                                                                                        jmp   rax
.Lx207_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx207_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx207_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_1:
                        call             rt_faildescr@PLT
.Lx207_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx207_240
                        add              rsp, 496
                                                                                        jmp   n188_lit_string_α
.Lx207_240:
                                                                                        jmp   n187_call_builtin_icon_α
n186_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "walk"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn209:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n186_proc_gen_β
                                                                                        jmp   n186_proc_gen_β
n187_call_builtin_icon_β:
                                                                                        jmp   n186_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n189_call_builtin_icon_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn212:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n190_var_α
                                                                                        jmp   n190_var_α
n189_call_builtin_icon_β:
                                                                                        jmp   n190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n191_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n191_proc_gen_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx216_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx216_21
.Lx216_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx216_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx216_1
                        lea              rcx, [rip + .Lx216_3]
                        lea              rdx, [rip + .Lx216_4]
                                                                                        jmp   rax
.Lx216_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx216_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx216_2
.Lx216_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx216_2
.Lx216_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx216_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx216_2
.Lx216_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx216_2
.Lx216_1:
                        call             rt_faildescr@PLT
.Lx216_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n178_call_builtin_icon_α
                                                                                        jmp   n192_call_builtin_icon_α
n191_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn218:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n191_proc_gen_β
                                                                                        jmp   n191_proc_gen_β
n192_call_builtin_icon_β:
                                                                                        jmp   n191_proc_gen_β
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
