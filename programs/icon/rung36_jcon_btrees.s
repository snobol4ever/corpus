                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tform_α
proc_tform_α:
                        .global          proc_tform_α
                        .global          proc_tform_β
                        .global          proc_tform_γ
                        .global          proc_tform_ω
                        sub              rsp, 960
                        mov              [rsp + 936], rcx
                        mov              [rsp + 944], rdx
                        mov              [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
proc_tform_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   n2_var_α
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
                                                                                        jmp   n3_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n4_unop_test_α
n2_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                                                                                        jmp   n6_return_α
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n8_lit_charset_α
n5_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx46_0
                                                                                        jmp   n7_scan_α
.Lx46_0:
                        cmp              eax, 1
                                                                                        jne   .Lx46_1
                                                                                        jmp   n7_scan_α
.Lx46_1:
                                                                                        jmp   n7_scan_α
n5_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        je    n35_scan_α
                                                                                        jmp   n35_scan_α
n5_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 1
                                                                                        je    n9_var_α
                                                                                        jmp   n35_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n6_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   proc_tform_ω
n7_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n5_disjunction_β
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_charset_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              dword ptr [rbp + 724], -1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n11_scan_upto_α
n8_lit_charset_β:
                                                                                        jmp   n5_disjunction_af
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n12_call_α
n9_var_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_conjunction_α:
                                                                                        jmp   n5_disjunction_as
n10_conjunction_β:
                                                                                        jmp   n35_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_upto_α:
                        mov              qword ptr [rbp + 704], r14
.Lx55_0:
                        mov              rax, qword ptr [rbp + 704]
                        cmp              rax, r15
                                                                                        jge   n5_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx55_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx55_1
                        mov              qword ptr [rbp + 688], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n13_scan_tab_α
.Lx55_1:
                        inc              qword ptr [rbp + 704]
                                                                                        jmp   .Lx55_0
n11_scan_upto_β:
                        inc              qword ptr [rbp + 704]
                                                                                        jmp   .Lx55_0
.Lx55_2:
                        .quad            .Lx55_2_s
.Lx55_2_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn57:               .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    proc_tform_ω
                                                                                        jmp   n14_return_α
n12_call_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 696]
                        cmp              rax, 1
                                                                                        jge   .Lx59_0
                        add              rax, r15
                        add              rax, 1
.Lx59_0:
                        cmp              rax, 1
                                                                                        jge   .Lx59_239
                        add              rsp, 16
                                                                                        jmp   n11_scan_upto_β
.Lx59_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx59_240
                        add              rsp, 16
                                                                                        jmp   n11_scan_upto_β
.Lx59_240:
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
                                                                                        jmp   n15_assign_α
n13_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n11_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n14_return_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n17_scan_move_α
.Lx62_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx64_239
                        add              rsp, 16
                                                                                        jmp   n18_lit_charset_α
.Lx64_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx64_240
                        add              rsp, 16
                                                                                        jmp   n18_lit_charset_α
.Lx64_240:
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
                                                                                        jmp   n18_lit_charset_α
n17_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n18_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_charset_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              dword ptr [rbp + 596], -1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n19_scan_bal_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_bal_α:
                        mov              qword ptr [rbp + 576], r14
                        mov              qword ptr [rbp + 584], 0
.Lx67_0:
                        mov              rax, qword ptr [rbp + 576]
                        cmp              rax, r15
                                                                                        jge   n22_lit_integer_α
                        mov              rdx, qword ptr [rbp + 584]
                        cmp              rdx, 0
                                                                                        jne   .Lx67_1
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx67_4]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx67_1
                        mov              qword ptr [rbp + 560], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n20_scan_tab_α
.Lx67_1:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 40
                                                                                        jne   .Lx67_2
                        inc              qword ptr [rbp + 584]
                                                                                        jmp   .Lx67_3
.Lx67_2:
                        cmp              rsi, 41
                                                                                        jne   .Lx67_3
                        mov              rdx, qword ptr [rbp + 584]
                        sub              rdx, 1
                        mov              qword ptr [rbp + 584], rdx
                        cmp              rdx, 0
                                                                                        jl    n22_lit_integer_α
.Lx67_3:
                        inc              qword ptr [rbp + 576]
                                                                                        jmp   .Lx67_0
n19_scan_bal_β:
                        inc              qword ptr [rbp + 576]
                                                                                        jmp   .Lx67_0
.Lx67_4:
                        .quad            .Lx67_4_s
.Lx67_4_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 568]
                        cmp              rax, 1
                                                                                        jge   .Lx69_0
                        add              rax, r15
                        add              rax, 1
.Lx69_0:
                        cmp              rax, 1
                                                                                        jge   .Lx69_239
                        add              rsp, 16
                                                                                        jmp   n19_scan_bal_β
.Lx69_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx69_240
                        add              rsp, 16
                                                                                        jmp   n19_scan_bal_β
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
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n21_assign_α
n20_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n19_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n23_scan_move_α
.Lx71_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx73_239
                        add              rsp, 16
                                                                                        jmp   n24_lit_charset_α
.Lx73_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx73_240
                        add              rsp, 16
                                                                                        jmp   n24_lit_charset_α
.Lx73_240:
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
                                                                                        jmp   n24_lit_charset_α
n23_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n24_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_charset_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              dword ptr [rbp + 468], -1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n25_scan_bal_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_bal_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n26_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 440]
                        cmp              rax, 1
                                                                                        jge   .Lx78_0
                        add              rax, r15
                        add              rax, 1
.Lx78_0:
                        cmp              rax, 1
                                                                                        jge   .Lx78_239
                        add              rsp, 16
                                                                                        jmp   n25_scan_bal_β
.Lx78_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx78_240
                        add              rsp, 16
                                                                                        jmp   n25_scan_bal_β
.Lx78_240:
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
                                                                                        jmp   n27_assign_α
n26_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n25_scan_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n30_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 304]
                        call             proc_tform_dcα
                                                                                        jmp   .Lx85_2
.Lx85_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    proc_tform_ω
                                                                                        jmp   n31_var_α
n30_call_proc_staged_β:
                                                                                        jmp   proc_tform_ω
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n32_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 368]
                        call             proc_tform_dcα
                                                                                        jmp   .Lx89_2
.Lx89_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    proc_tform_ω
                                                                                        jmp   n33_call_α
n32_call_proc_staged_β:
                                                                                        jmp   proc_tform_ω
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:
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
.Lrkfn91:               .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 176]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_tform_ω
                                                                                        jmp   n34_return_α
n33_call_β:
                                                                                        jmp   proc_tform_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_return_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_tform_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_scan_α:
                        lea              rdi, [rbp + 48]
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 936]
                        lea              rsp, [rbp + 960]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tform_ω:
                        mov              rax, [rbp + 944]
                        lea              rsp, [rbp + 960]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tform_dcα:
                        pop              r11
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 928], r11
                        lea              rax, [rip + .Lx95_2]
                        mov              qword ptr [rbp + 936], rax
                        lea              rax, [rip + .Lx95_3]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 880
                        mov              edx, 928
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tform_α_body
.Lx95_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -960
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx95_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -960
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_walk_α
proc_walk_α:
                        .global          proc_walk_α
                        .global          proc_walk_β
                        .global          proc_walk_γ
                        .global          proc_walk_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_walk_α_body:
                        lea              rax, [rip + n102_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n98_var_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx111_21:
                        mov              edi, 1
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n96_disjunction_β
                                                                                        jmp   n102_suspend_α
n97_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "walk"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n103_field_get_α
n98_var_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n104_field_get_α
n99_var_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n100_unop_test_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 99
                                                                                        je    n96_disjunction_af
                        cmp              eax, 0
                                                                                        je    n96_disjunction_af
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n96_disjunction_as
n100_unop_test_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n101_unop_test_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 99
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
n102_suspend_α:
                        lea              rax, [rip + n102_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_walk_γ
n102_suspend_β:
                                                                                        jmp   n97_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n103_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n96_disjunction_af
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n100_unop_test_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n104_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx121_0]
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n96_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n101_unop_test_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n106_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n106_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        mov              rsi, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        call             dat_field_get@PLT
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_walk_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_walk_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_leaves_α
proc_leaves_α:
                        .global          proc_leaves_α
                        .global          proc_leaves_β
                        .global          proc_leaves_γ
                        .global          proc_leaves_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 432
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_leaves_α_body:
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rbp + 432], rax
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n128_disjunction_α
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
                                                                                        jmp   n130_var_α
n127_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx150_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n129_proc_gen_α
.Lx150_0:
                        cmp              eax, 1
                                                                                        jne   .Lx150_1
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n129_proc_gen_α
.Lx150_1:
                                                                                        jmp   n129_proc_gen_α
n127_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n127_disjunction_af
                                                                                        jmp   n127_disjunction_af
n127_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n131_var_α
                                                                                        jmp   proc_leaves_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n134_var_α
n128_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx152_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n126_disjunction_af
.Lx152_0:
                        cmp              eax, 1
                                                                                        jne   .Lx152_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n126_disjunction_af
.Lx152_1:
                                                                                        jmp   n126_disjunction_af
n128_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        je    n128_disjunction_af
                                                                                        jmp   n128_disjunction_af
n128_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n135_var_α
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_proc_gen_α:
                        mov              qword ptr [rbp + 64], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx154_20
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx154_21
.Lx154_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        call             rt_arg_stage@PLT
.Lx154_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx154_1
                        lea              rcx, [rip + .Lx154_3]
                        lea              rdx, [rip + .Lx154_4]
                                                                                        jmp   rax
.Lx154_3:
                        mov              qword ptr [rbp + 72], rsp
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx154_5
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx154_2
.Lx154_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx154_2
.Lx154_4:
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx154_6
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx154_2
.Lx154_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx154_2
.Lx154_1:
                        call             rt_faildescr@PLT
.Lx154_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n127_disjunction_β
                                                                                        jmp   n138_suspend_α
n129_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   qword ptr [rsp]
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n139_field_get_α
n130_var_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n140_field_get_α
n131_var_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n132_unop_test_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 99
                                                                                        je    n127_disjunction_af
                        cmp              eax, 0
                                                                                        je    n127_disjunction_af
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n127_disjunction_as
n132_unop_test_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n133_unop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 99
                                                                                        je    n127_disjunction_af
                        cmp              eax, 0
                                                                                        je    n127_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n127_disjunction_as
n133_unop_test_β:
                                                                                        jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n141_field_get_α
n134_var_β:
                                                                                        jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n142_field_get_α
n135_var_β:
                                                                                        jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_unop_test_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 99
                                                                                        je    n128_disjunction_af
                        cmp              eax, 0
                                                                                        je    n128_disjunction_af
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n128_disjunction_as
n136_unop_test_β:
                                                                                        jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n137_unop_test_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 99
                                                                                        je    n128_disjunction_af
                        cmp              eax, 0
                                                                                        je    n128_disjunction_af
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n128_disjunction_as
n137_unop_test_β:
                                                                                        jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n138_suspend_α:
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leaves_γ
n138_suspend_β:
                                                                                        jmp   n129_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n139_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx169_0]
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n127_disjunction_af
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n132_unop_test_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n140_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx170_0]
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n127_disjunction_af
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n133_unop_test_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "rtree"
#-----------------------------------------------------------------------------------------------------------------------
n141_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx171_0]
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n128_disjunction_af
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n136_unop_test_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "ltree"
#-----------------------------------------------------------------------------------------------------------------------
n142_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n128_disjunction_af
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n137_unop_test_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "rtree"
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
                        mov              rdi, qword ptr [rip + .Lx176_0]
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             dat_field_get@PLT
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_leaves_res]
                        push             rax
                        mov              rax, [rbp + 456]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_leaves_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
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
                        sub              rsp, 536
                        mov              rdi, rsp
                        mov              ecx, 536
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 528], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn194:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rbp + 32]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n179_assign_α
n178_call_builtin_icon_β:
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
                        cmp              eax, 99
                                                                                        je    n182_lit_string_α
                                                                                        jmp   n183_assign_α
n181_call_proc_staged_β:
                                                                                        jmp   n182_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "tform"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n184_call_builtin_icon_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "tree walk"
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n182_lit_string_α
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
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx207_21:
                        mov              edi, 1
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n187_lit_string_α
                                                                                        jmp   n188_call_builtin_icon_α
n186_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "walk"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n189_call_builtin_icon_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "leaves"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn210:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n186_proc_gen_β
                                                                                        jmp   n186_proc_gen_β
n188_call_builtin_icon_β:
                                                                                        jmp   n186_proc_gen_β
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
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx216_21:
                        mov              edi, 2
                        mov              esi, 1
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
                        cmp              eax, 99
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
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n191_proc_gen_β
                                                                                        jmp   n191_proc_gen_β
n192_call_builtin_icon_β:
                                                                                        jmp   n191_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 528]
                        add              rsp, 536
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 528]
                        add              rsp, 536
                        ret
                        .section         .rodata
.S0:                    .string          "bb_scan_bal: unhandled (needs nonempty bracket-free literal c1 + descr flat-chain slot)"
                        .text
                        .section         .note.GNU-stack,"",@progbits
