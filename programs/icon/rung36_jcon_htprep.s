                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_braces_α
proc_braces_α:
                        .global          proc_braces_α
                        .global          proc_braces_β
                        .global          proc_braces_γ
                        .global          proc_braces_ω
                        sub              rsp, 1120
                        mov              [rsp + 1096], rcx
                        mov              [rsp + 1104], rdx
                        mov              [rsp + 1112], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1088
                        call             rt_jmp_frame_lexprep2@PLT
proc_braces_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n3_assign_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              dword ptr [rbp + 308], -1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n7_scan_upto_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "{}"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_upto_α:
                        mov              qword ptr [rbp + 288], r14
.Lx64_0:
                        mov              rax, qword ptr [rbp + 288]
                        cmp              rax, r15
                                                                                        jge   n6_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx64_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx64_1
                        mov              qword ptr [rbp + 272], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n9_scan_tab_α
.Lx64_1:
                        inc              qword ptr [rbp + 288]
                                                                                        jmp   .Lx64_0
n7_scan_upto_β:
                        inc              qword ptr [rbp + 288]
                                                                                        jmp   .Lx64_0
.Lx64_2:
                        .quad            .Lx64_2_s
.Lx64_2_s:
                        .string          "{}"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n10_scan_tab_α
.Lx65_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 280]
                        cmp              rax, 1
                                                                                        jge   .Lx67_0
                        add              rax, r15
                        add              rax, 1
.Lx67_0:
                        cmp              rax, 1
                                                                                        jge   .Lx67_239
                        add              rsp, 16
                                                                                        jmp   n7_scan_upto_β
.Lx67_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx67_240
                        add              rsp, 16
                                                                                        jmp   n7_scan_upto_β
.Lx67_240:
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n11_binop_α
n9_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n7_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx69_0
                        add              rax, r15
                        add              rax, 1
.Lx69_0:
                        cmp              rax, 1
                                                                                        jge   .Lx69_239
                        add              rsp, 16
                                                                                        jmp   proc_braces_ω
.Lx69_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx69_240
                        add              rsp, 16
                                                                                        jmp   proc_braces_ω
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
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n12_binop_α
n10_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_braces_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n16_return_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n17_scan_move_α
.Lx74_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_return_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_braces_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx77_239
                        add              rsp, 16
                                                                                        jmp   n19_disjunction_α
.Lx77_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx77_240
                        add              rsp, 16
                                                                                        jmp   n19_disjunction_α
.Lx77_240:
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
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n18_assign_α
n17_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n19_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n19_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n19_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n21_var_α
n19_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx80_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n20_conjunction_α
.Lx80_0:
                        cmp              eax, 1
                                                                                        jne   .Lx80_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n20_conjunction_α
.Lx80_1:
                                                                                        jmp   n20_conjunction_α
n19_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n4_var_α
                                                                                        jmp   n22_disjunction_β
n19_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n22_disjunction_α
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_conjunction_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n4_var_α
n20_conjunction_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n24_lit_string_α
n21_var_β:
                                                                                        jmp   n19_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              dword ptr [rbp + 512], 0
                                                                                        jmp   n25_var_α
n22_disjunction_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        jne   .Lx85_0
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n19_disjunction_as
.Lx85_0:
                        cmp              eax, 1
                                                                                        jne   .Lx85_1
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n19_disjunction_as
.Lx85_1:
                                                                                        jmp   n19_disjunction_as
n22_disjunction_β:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        je    n26_disjunction_β
                                                                                        jmp   n4_var_α
n22_disjunction_af:
                        add              dword ptr [rbp + 512], 1
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 1
                                                                                        je    n27_lit_string_α
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n19_disjunction_as
n23_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n29_binop_test_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n30_call_builtin_icon_α
n25_var_β:
                                                                                        jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n31_var_α
n26_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx90_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n22_disjunction_as
.Lx90_0:
                        cmp              eax, 1
                                                                                        jne   .Lx90_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n22_disjunction_as
.Lx90_1:
                                                                                        jmp   n22_disjunction_as
n26_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        je    n4_var_α
                                                                                        jmp   n4_var_α
n26_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1
                                                                                        je    n32_var_α
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n28_call_proc_staged_α
n27_lit_string_β:
                                                                                        jmp   n4_var_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "tag stack underflow"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        mov              edi, 8
                        lea              rsi, [rbp + 944]
                        call             rt_proc_call_open_det1@PLT
                        test             rax, rax
                                                                                        je    .Lx93_1
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4]
                                                                                        jmp   rax
.Lx93_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx93_2
.Lx93_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx93_2
.Lx93_1:
                        call             rt_faildescr@PLT
.Lx93_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n4_var_α
                                                                                        jmp   n22_disjunction_as
n28_call_proc_staged_β:
                                                                                        jmp   n4_var_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n19_disjunction_af
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn96:               .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n22_disjunction_af
                                                                                        jmp   n36_assign_α
n30_call_builtin_icon_β:
                                                                                        jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n37_field_get_α
n31_var_β:
                                                                                        jmp   n26_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n38_lit_string_α
n32_var_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n26_disjunction_as
n33_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n26_disjunction_as
n34_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n39_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n37_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n26_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n40_lit_string_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n41_var_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "</"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_newtag_dcα
                                                                                        jmp   .Lx109_2
.Lx109_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n4_var_α
                                                                                        jmp   n42_binop_α
n39_call_proc_staged_β:
                                                                                        jmp   n4_var_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "newtag"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n43_binop_test_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n44_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_test_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n26_disjunction_af
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx115_0]
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n4_var_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n46_binop_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n49_binop_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "-->"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n50_binop_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n33_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n51_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n34_assign_α
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_β:
                                                                                        jmp   proc_braces_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1096]
                        lea              rsp, [rbp + 1120]
                        mov              rbp, [rbp + 1112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_ω:
                        mov              rax, [rbp + 1104]
                        lea              rsp, [rbp + 1120]
                        mov              rbp, [rbp + 1112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_dcα:
                        pop              r11
                        sub              rsp, 1136
                        mov              qword ptr [rsp + 1112], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1088], r11
                        lea              rax, [rip + .Lx124_2]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rax, [rip + .Lx124_3]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1040
                        mov              edx, 1088
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_braces_α_body
.Lx124_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1120
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx124_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1120
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_newtag_α
proc_newtag_α:
                        .global          proc_newtag_α
                        .global          proc_newtag_β
                        .global          proc_newtag_γ
                        .global          proc_newtag_ω
                        sub              rsp, 2224
                        mov              [rsp + 2200], rcx
                        mov              [rsp + 2208], rdx
                        mov              [rsp + 2216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2144
                        mov              edx, 2192
                        call             rt_jmp_frame_lexprep2@PLT
proc_newtag_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_disjunction_α:
                        mov              qword ptr [rbp + 1968], 0
                        mov              qword ptr [rbp + 1976], 0
                        mov              dword ptr [rbp + 1984], 0
                                                                                        jmp   n127_lit_string_α
n125_disjunction_as:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        jne   .Lx210_0
                                                                                        jmp   n126_disjunction_α
.Lx210_0:
                                                                                        jmp   n126_disjunction_α
n125_disjunction_β:
                        mov              eax, dword ptr [rbp + 1984]
                                                                                        jmp   n126_disjunction_α
n125_disjunction_af:
                        add              dword ptr [rbp + 1984], 1
                        mov              eax, dword ptr [rbp + 1984]
                                                                                        jmp   n126_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              dword ptr [rbp + 1616], 0
                                                                                        jmp   n129_lit_string_α
n126_disjunction_as:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0
                                                                                        jne   .Lx212_0
                                                                                        jmp   n128_disjunction_α
.Lx212_0:
                                                                                        jmp   n128_disjunction_α
n126_disjunction_β:
                        mov              eax, dword ptr [rbp + 1616]
                                                                                        jmp   n128_disjunction_α
n126_disjunction_af:
                        add              dword ptr [rbp + 1616], 1
                        mov              eax, dword ptr [rbp + 1616]
                                                                                        jmp   n128_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n131_call_α
n127_lit_string_β:
                                                                                        jmp   n125_disjunction_af
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n133_lit_charset_α
n128_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx215_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n132_disjunction_α
.Lx215_0:
                        cmp              eax, 1
                                                                                        jne   .Lx215_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n132_disjunction_α
.Lx215_1:
                                                                                        jmp   n132_disjunction_α
n128_disjunction_β:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        je    n132_disjunction_α
                                                                                        jmp   n132_disjunction_α
n128_disjunction_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 1
                                                                                        je    n134_disjunction_α
                                                                                        jmp   n132_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n137_call_α
n129_lit_string_β:
                                                                                        jmp   n126_disjunction_af
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n130_conjunction_α:
                                                                                        jmp   n126_disjunction_as
n130_conjunction_β:
                                                                                        jmp   n128_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn59:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn59]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n125_disjunction_af
                                                                                        jmp   n138_call_α
n131_call_β:
                                                                                        jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n132_disjunction_α:
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0
                                                                                        jmp   n140_var_ref_α
n132_disjunction_as:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        jne   .Lx220_0
                                                                                        jmp   n139_var_α
.Lx220_0:
                                                                                        jmp   n139_var_α
n132_disjunction_β:
                        mov              eax, dword ptr [rbp + 624]
                                                                                        jmp   n139_var_α
n132_disjunction_af:
                        add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                                                                                        jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_charset_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              dword ptr [rbp + 1252], -1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n141_call_builtin_icon_α
n133_lit_charset_β:
                                                                                        jmp   n128_disjunction_af
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          ":@"
#-----------------------------------------------------------------------------------------------------------------------
n134_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n143_var_α
n134_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx223_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n142_assign_α
.Lx223_0:
                        cmp              eax, 1
                                                                                        jne   .Lx223_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n142_assign_α
.Lx223_1:
                                                                                        jmp   n142_assign_α
n134_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n134_disjunction_af
                                                                                        jmp   n145_goto_β
n134_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n144_lit_string_α
                                                                                        jmp   n154_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n135_conjunction_α:
                                                                                        jmp   n128_disjunction_as
n135_conjunction_β:
                                                                                        jmp   n132_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n136_conjunction_α:
                                                                                        jmp   n128_disjunction_as
n136_conjunction_β:
                                                                                        jmp   n132_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn65:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn65]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n126_disjunction_af
                                                                                        jmp   n148_call_α
n137_call_β:
                                                                                        jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        mov              qword ptr [rbp + 2048], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn66:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn66]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n125_disjunction_af
                                                                                        jmp   n149_lit_string_α
n138_call_β:
                        mov              r14, qword ptr [rbp + 2048]
                                                                                        jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n150_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n152_var_α
n140_var_ref_β:
                                                                                        jmp   n132_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn69:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn69]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n128_disjunction_af
                                                                                        jmp   n153_call_α
n141_call_builtin_icon_β:
                                                                                        jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n154_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n155_call_builtin_icon_α
n143_var_β:
                                                                                        jmp   n134_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n156_call_proc_staged_α
n144_lit_string_β:
                                                                                        jmp   n134_disjunction_af
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "unlabeled tag"
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_α:
                                                                                        jmp   n134_disjunction_af
n145_goto_β:
                                                                                        jmp   n134_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              qword ptr [rbp + 1408], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn74:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn74]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n134_disjunction_af
                                                                                        jmp   n134_disjunction_as
n146_call_β:
                        mov              r14, qword ptr [rbp + 1408]
                                                                                        jmp   n134_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n147_conjunction_α:
                                                                                        jmp   n134_disjunction_as
n147_conjunction_β:
                                                                                        jmp   n134_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              qword ptr [rbp + 1872], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn76:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn76]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n126_disjunction_af
                                                                                        jmp   n157_var_α
n148_call_β:
                        mov              r14, qword ptr [rbp + 1872]
                                                                                        jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n158_return_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        call             proc_attrib_dcα
                                                                                        jmp   .Lx242_2
.Lx242_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n151_lit_charset_α
                                                                                        jmp   n159_binop_α
n150_call_proc_staged_β:
                                                                                        jmp   n151_lit_charset_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "attrib"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_charset_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              dword ptr [rbp + 516], -1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n160_call_builtin_icon_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n161_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              qword ptr [rbp + 1168], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn81:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn81]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n128_disjunction_af
                                                                                        jmp   n162_assign_α
n153_call_β:
                        mov              r14, qword ptr [rbp + 1168]
                                                                                        jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n163_var_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn83:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn83]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n134_disjunction_af
                                                                                        jmp   n146_call_α
n155_call_builtin_icon_β:
                                                                                        jmp   n134_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n156_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rbp + 1584]
                        call             rt_proc_call_open_det1@PLT
                        test             rax, rax
                                                                                        je    .Lx250_1
                        lea              rcx, [rip + .Lx250_3]
                        lea              rdx, [rip + .Lx250_4]
                                                                                        jmp   rax
.Lx250_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx250_2
.Lx250_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx250_2
.Lx250_1:
                        call             rt_faildescr@PLT
.Lx250_2:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n134_disjunction_af
                                                                                        jmp   n164_lit_string_α
n156_call_proc_staged_β:
                                                                                        jmp   n134_disjunction_af
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_return_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n167_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn88:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn88]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n169_disjunction_α
                                                                                        jmp   n168_call_α
n160_call_builtin_icon_β:
                                                                                        jmp   n169_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn256:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n132_disjunction_af
                                                                                        jmp   n170_subscript_α
n161_call_builtin_icon_β:
                                                                                        jmp   n132_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n172_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n147_conjunction_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "noname"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n173_var_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n174_return_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "<!--"
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              qword ptr [rbp + 432], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn96:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn96]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n169_disjunction_α
                                                                                        jmp   n169_disjunction_α
n168_call_β:
                        mov              r14, qword ptr [rbp + 432]
                                                                                        jmp   n169_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n169_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n176_lit_string_α
n169_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx266_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n175_var_α
.Lx266_0:
                        cmp              eax, 1
                                                                                        jne   .Lx266_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n175_var_α
.Lx266_1:
                                                                                        jmp   n175_var_α
n169_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n169_disjunction_af
                                                                                        jmp   n169_disjunction_af
n169_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n177_var_α
                                                                                        jmp   n175_var_α
#-----------------------------------------------------------------------------------------------------------------------
n170_subscript_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n132_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n180_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n181_assign_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n182_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n183_call_α
#-----------------------------------------------------------------------------------------------------------------------
n174_return_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n185_call_α
n176_lit_string_β:
                                                                                        jmp   n169_disjunction_af
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n186_var_α
n177_var_β:
                                                                                        jmp   n169_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn106:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn106]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n169_disjunction_af
                                                                                        jmp   n169_disjunction_as
n178_call_β:
                        mov              r14, qword ptr [rbp + 128]
                                                                                        jmp   n169_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn278:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n169_disjunction_af
                                                                                        jmp   n169_disjunction_as
n179_call_builtin_icon_β:
                                                                                        jmp   n169_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n180_deref_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n132_disjunction_af
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n187_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n188_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n136_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn283:              .string          "tag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n166_lit_string_α
                                                                                        jmp   n189_call_builtin_icon_α
n183_call_β:
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 48], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n190_binop_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn113:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn113]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n169_disjunction_af
                                                                                        jmp   n178_call_α
n185_call_β:
                                                                                        jmp   n169_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n191_var_α
#-----------------------------------------------------------------------------------------------------------------------
n187_unop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 99
                                                                                        je    n132_disjunction_af
                        cmp              eax, 0
                                                                                        je    n132_disjunction_af
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n188_disjunction_α:
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              dword ptr [rbp + 992], 0
                                                                                        jmp   n194_var_α
n188_disjunction_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        jne   .Lx290_0
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n193_var_α
.Lx290_0:
                        cmp              eax, 1
                                                                                        jne   .Lx290_1
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n193_var_α
.Lx290_1:
                                                                                        jmp   n193_var_α
n188_disjunction_β:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        je    n193_var_α
                                                                                        jmp   n193_var_α
n188_disjunction_af:
                        add              dword ptr [rbp + 992], 1
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 1
                                                                                        je    n195_lit_string_α
                                                                                        jmp   n193_var_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lrkfn292:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n166_lit_string_α
                                                                                        jmp   n166_lit_string_α
n189_call_builtin_icon_β:
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n198_return_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n199_call_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n200_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n201_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n202_lit_string_α
n194_var_β:
                                                                                        jmp   n188_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n197_assign_α
n195_lit_string_β:
                                                                                        jmp   n193_var_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "<a name="
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n188_disjunction_as
n196_assign_β:
                                                                                        jmp   n193_var_α
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n188_disjunction_as
n197_assign_β:
                                                                                        jmp   n193_var_α
#-----------------------------------------------------------------------------------------------------------------------
n198_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n199_call_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn306:              .string          "tag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rbp + 320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n169_disjunction_af
                                                                                        jmp   n179_call_builtin_icon_α
n199_call_β:
                                                                                        jmp   n169_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        lea              rsi, [rbp + 704]
                        call             proc_docommand_dcα
                                                                                        jmp   .Lx308_2
.Lx308_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    proc_newtag_ω
                                                                                        jmp   n203_assign_α
n200_call_proc_staged_β:
                                                                                        jmp   proc_newtag_ω
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "docommand"
#-----------------------------------------------------------------------------------------------------------------------
n201_call_proc_staged_α:
                        call             proc_attval_dcα
                                                                                        jmp   .Lx310_2
.Lx310_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n132_disjunction_α
                                                                                        jmp   n204_binop_α
n201_call_proc_staged_β:
                                                                                        jmp   n132_disjunction_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "attval"
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n205_binop_test_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n206_return_α
#-----------------------------------------------------------------------------------------------------------------------
n204_binop_α:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n207_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n188_disjunction_af
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_return_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n135_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n196_assign_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "<a href="
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_β:
                                                                                        jmp   proc_newtag_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2200]
                        lea              rsp, [rbp + 2224]
                        mov              rbp, [rbp + 2216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_ω:
                        mov              rax, [rbp + 2208]
                        lea              rsp, [rbp + 2224]
                        mov              rbp, [rbp + 2216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_dcα:
                        pop              r11
                        sub              rsp, 2240
                        mov              qword ptr [rsp + 2216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2192], r11
                        lea              rax, [rip + .Lx318_2]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rax, [rip + .Lx318_3]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rdi, rbp
                        mov              esi, 2144
                        mov              edx, 2192
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_newtag_α_body
.Lx318_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2224
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx318_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2224
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_attrib_α
proc_attrib_α:
                        .global          proc_attrib_α
                        .global          proc_attrib_β
                        .global          proc_attrib_γ
                        .global          proc_attrib_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_attrib_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n319_scan_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], 0
                                                                                        jmp   n321_lit_charset_α
n319_scan_sequence_as:
                        mov              eax, dword ptr [rbp + 52]
                        add              eax, 1
                        mov              dword ptr [rbp + 52], eax
                        cmp              eax, 1
                                                                                        je    n323_var_α
                        cmp              eax, 2
                                                                                        je    n325_lit_string_α
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             str_concat_d@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             str_concat_d@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n320_call_proc_staged_α
n319_scan_sequence_β:
                        mov              dword ptr [rbp + 52], 3
n319_scan_sequence_af:
                        mov              eax, dword ptr [rbp + 52]
                        sub              eax, 1
                        mov              dword ptr [rbp + 52], eax
                        cmp              eax, 0
                                                                                        je    n322_call_β
                        cmp              eax, 1
                                                                                        je    n324_call_β
                        cmp              eax, 2
                                                                                        je    n326_call_β
                                                                                        jmp   proc_attrib_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_call_proc_staged_α:
                        call             proc_attval_dcα
                                                                                        jmp   .Lx335_2
.Lx335_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n319_scan_sequence_β
                                                                                        jmp   n327_binop_α
n320_call_proc_staged_β:
                                                                                        jmp   n319_scan_sequence_β
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "attval"
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_charset_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], -1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n328_call_builtin_icon_α
n321_lit_charset_β:
                                                                                        jmp   n319_scan_sequence_af
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn140:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn140]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n319_scan_sequence_af
                                                                                        jmp   n319_scan_sequence_as
n322_call_β:
                        mov              r14, qword ptr [rbp + 96]
                                                                                        jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n329_call_builtin_icon_α
n323_var_β:
                                                                                        jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              qword ptr [rbp + 224], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn142:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn142]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n319_scan_sequence_af
                                                                                        jmp   n319_scan_sequence_as
n324_call_β:
                        mov              r14, qword ptr [rbp + 224]
                                                                                        jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n330_call_α
n325_lit_string_β:
                                                                                        jmp   n319_scan_sequence_af
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              qword ptr [rbp + 352], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn144:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn144]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n319_scan_sequence_af
                                                                                        jmp   n319_scan_sequence_as
n326_call_β:
                        mov              r14, qword ptr [rbp + 352]
                                                                                        jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n331_return_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn146:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn146]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n319_scan_sequence_af
                                                                                        jmp   n322_call_α
n328_call_builtin_icon_β:
                                                                                        jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn147:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn147]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n319_scan_sequence_af
                                                                                        jmp   n324_call_α
n329_call_builtin_icon_β:
                                                                                        jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn148:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn148]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n319_scan_sequence_af
                                                                                        jmp   n326_call_α
n330_call_β:
                                                                                        jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n331_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_attrib_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_β:
                                                                                        jmp   proc_attrib_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx347_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx347_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, rbp
                        mov              esi, 480
                        mov              edx, 480
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_attrib_α_body
.Lx347_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx347_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_attval_α
proc_attval_α:
                        .global          proc_attval_α
                        .global          proc_attval_β
                        .global          proc_attval_γ
                        .global          proc_attval_ω
                        sub              rsp, 1248
                        mov              [rsp + 1224], rcx
                        mov              [rsp + 1232], rdx
                        mov              [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1216
                        call             rt_jmp_frame_lexprep2@PLT
proc_attval_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n348_disjunction_α:
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              dword ptr [rbp + 992], 0
                                                                                        jmp   n350_var_ref_α
n348_disjunction_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        jne   .Lx389_0
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n349_disjunction_α
.Lx389_0:
                                                                                        jmp   n349_disjunction_α
n348_disjunction_β:
                        mov              eax, dword ptr [rbp + 992]
                                                                                        jmp   n349_disjunction_α
n348_disjunction_af:
                        add              dword ptr [rbp + 992], 1
                        mov              eax, dword ptr [rbp + 992]
                                                                                        jmp   n349_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n349_disjunction_α:
                        mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                                                                                        jmp   n353_scan_sequence_α
n349_disjunction_as:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        jne   .Lx391_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n352_return_α
.Lx391_0:
                        cmp              eax, 1
                                                                                        jne   .Lx391_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n352_return_α
.Lx391_1:
                        cmp              eax, 2
                                                                                        jne   .Lx391_2
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n352_return_α
.Lx391_2:
                                                                                        jmp   n352_return_α
n349_disjunction_β:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        je    n353_scan_sequence_β
                        cmp              eax, 1
                                                                                        je    n354_scan_sequence_β
                                                                                        jmp   n349_disjunction_af
n349_disjunction_af:
                        add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 1
                                                                                        je    n354_scan_sequence_α
                        cmp              eax, 2
                                                                                        je    n355_lit_string_α
                                                                                        jmp   proc_attval_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052432
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n357_nulltest_var_α
n350_var_ref_β:
                                                                                        jmp   n348_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n351_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n348_disjunction_as
n351_assign_β:
                                                                                        jmp   n349_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n352_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_attval_γ
#-----------------------------------------------------------------------------------------------------------------------
n353_scan_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], 0
                                                                                        jmp   n358_lit_string_α
n353_scan_sequence_as:
                        mov              eax, dword ptr [rbp + 68]
                        add              eax, 1
                        mov              dword ptr [rbp + 68], eax
                        cmp              eax, 1
                                                                                        je    n360_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n362_lit_integer_α
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             str_concat_d@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n349_disjunction_as
n353_scan_sequence_β:
                        mov              dword ptr [rbp + 68], 3
n353_scan_sequence_af:
                        mov              eax, dword ptr [rbp + 68]
                        sub              eax, 1
                        mov              dword ptr [rbp + 68], eax
                        cmp              eax, 0
                                                                                        je    n359_call_β
                        cmp              eax, 1
                                                                                        je    n361_call_β
                        cmp              eax, 2
                                                                                        je    n363_call_β
                                                                                        jmp   n349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n354_scan_sequence_α:
                        mov              dword ptr [rbp + 432], r14d
                        mov              dword ptr [rbp + 436], 0
                                                                                        jmp   n364_lit_string_α
n354_scan_sequence_as:
                        mov              eax, dword ptr [rbp + 436]
                        add              eax, 1
                        mov              dword ptr [rbp + 436], eax
                        cmp              eax, 1
                                                                                        je    n366_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n368_lit_integer_α
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             str_concat_d@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             str_concat_d@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n349_disjunction_as
n354_scan_sequence_β:
                        mov              dword ptr [rbp + 436], 3
n354_scan_sequence_af:
                        mov              eax, dword ptr [rbp + 436]
                        sub              eax, 1
                        mov              dword ptr [rbp + 436], eax
                        cmp              eax, 0
                                                                                        je    n365_call_β
                        cmp              eax, 1
                                                                                        je    n367_call_β
                        cmp              eax, 2
                                                                                        je    n369_call_β
                                                                                        jmp   n349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n370_var_α
n355_lit_string_β:
                                                                                        jmp   n349_disjunction_af
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n356_binop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n349_disjunction_as
n356_binop_β:
                                                                                        jmp   n349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n357_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 99
                                                                                        je    n348_disjunction_af
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n348_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n348_disjunction_af
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n371_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n372_call_α
n358_lit_string_β:
                                                                                        jmp   n353_scan_sequence_af
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn161:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn161]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n353_scan_sequence_af
                                                                                        jmp   n353_scan_sequence_as
n359_call_β:
                        mov              r14, qword ptr [rbp + 112]
                                                                                        jmp   n353_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_charset_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              dword ptr [rbp + 324], -1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n373_call_builtin_gen_α
n360_lit_charset_β:
                                                                                        jmp   n353_scan_sequence_af
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              qword ptr [rbp + 240], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn163:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn163]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n373_call_builtin_gen_β
                                                                                        jmp   n353_scan_sequence_as
n361_call_β:
                        mov              r14, qword ptr [rbp + 240]
                                                                                        jmp   n373_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n363_call_α
n362_lit_integer_β:
                                                                                        jmp   n353_scan_sequence_af
.Lx407_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              qword ptr [rbp + 368], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn165:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn165]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n353_scan_sequence_af
                                                                                        jmp   n353_scan_sequence_as
n363_call_β:
                        mov              r14, qword ptr [rbp + 368]
                                                                                        jmp   n353_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n374_call_α
n364_lit_string_β:
                                                                                        jmp   n354_scan_sequence_af
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              qword ptr [rbp + 480], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn167:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn167]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n354_scan_sequence_af
                                                                                        jmp   n354_scan_sequence_as
n365_call_β:
                        mov              r14, qword ptr [rbp + 480]
                                                                                        jmp   n354_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_charset_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              dword ptr [rbp + 692], -1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n375_call_builtin_gen_α
n366_lit_charset_β:
                                                                                        jmp   n354_scan_sequence_af
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              qword ptr [rbp + 608], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn169:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn169]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n375_call_builtin_gen_β
                                                                                        jmp   n354_scan_sequence_as
n367_call_β:
                        mov              r14, qword ptr [rbp + 608]
                                                                                        jmp   n375_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n369_call_α
n368_lit_integer_β:
                                                                                        jmp   n354_scan_sequence_af
.Lx413_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              qword ptr [rbp + 736], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn171:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn171]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n354_scan_sequence_af
                                                                                        jmp   n354_scan_sequence_as
n369_call_β:
                        mov              r14, qword ptr [rbp + 736]
                                                                                        jmp   n354_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n376_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:
                        mov              qword ptr [rbp + 1200], 6
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n377_assign_var_α
.Lx416_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn174:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn174]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n353_scan_sequence_af
                                                                                        jmp   n359_call_α
n372_call_β:
                                                                                        jmp   n353_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              qword ptr [rbp + 304], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx418_60:
                        .section         .rodata
.Lbynamegenfn175:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn175]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        lea              rcx, [rbp + 304]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n353_scan_sequence_af
                                                                                        jmp   n361_call_α
n373_call_builtin_gen_β:
                                                                                        jmp   .Lx418_60
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn176:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn176]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n354_scan_sequence_af
                                                                                        jmp   n365_call_α
n374_call_β:
                                                                                        jmp   n354_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n375_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              qword ptr [rbp + 672], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx420_60:
                        .section         .rodata
.Lbynamegenfn177:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn177]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        lea              rcx, [rbp + 672]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n354_scan_sequence_af
                                                                                        jmp   n367_call_α
n375_call_builtin_gen_β:
                                                                                        jmp   .Lx420_60
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn178:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn178]
                        lea              rsi, [rbp + 912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n349_disjunction_af
                                                                                        jmp   n378_call_α
n376_call_builtin_icon_β:
                                                                                        jmp   n349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n348_disjunction_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n379_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              qword ptr [rbp + 864], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn180:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn180]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n349_disjunction_af
                                                                                        jmp   n380_binop_α
n378_call_β:
                        mov              r14, qword ptr [rbp + 864]
                                                                                        jmp   n349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n379_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx424_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n349_disjunction_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n381_lit_integer_α
n379_keyword_icon_β:
                                                                                        jmp   n349_disjunction_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n380_binop_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n383_lit_integer_α
.Lx426_0:
                        .quad            34
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n356_binop_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n384_binop_α
.Lx428_0:
                        .quad            94
#-----------------------------------------------------------------------------------------------------------------------
n384_binop_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n349_disjunction_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n385_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8, qword ptr [rbp + 1120]
                        mov              r9, qword ptr [rbp + 1128]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n349_disjunction_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n386_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_charset_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              dword ptr [rbp + 1140], -1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n387_binop_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "\"'\\{}"
#-----------------------------------------------------------------------------------------------------------------------
n387_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n349_disjunction_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n351_assign_α
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_β:
                                                                                        jmp   proc_attval_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1224]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_ω:
                        mov              rax, [rbp + 1232]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_dcα:
                        pop              r11
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1216], r11
                        lea              rax, [rip + .Lx433_2]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rax, [rip + .Lx433_3]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rdi, rbp
                        mov              esi, 1216
                        mov              edx, 1216
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_attval_α_body
.Lx433_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx433_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_docommand_α
proc_docommand_α:
                        .global          proc_docommand_α
                        .global          proc_docommand_β
                        .global          proc_docommand_γ
                        .global          proc_docommand_ω
                        sub              rsp, 1520
                        mov              [rsp + 1496], rcx
                        mov              [rsp + 1504], rdx
                        mov              [rsp + 1512], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1408
                        mov              edx, 1488
                        call             rt_jmp_frame_lexprep2@PLT
proc_docommand_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n435_var_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n436_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n436_subscript_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n437_call_builtin_icon_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n438_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn501:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn501]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n440_make_list_α
                                                                                        jmp   n439_assign_α
n437_call_builtin_icon_β:
                                                                                        jmp   n440_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n438_deref_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n437_call_builtin_icon_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n441_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n440_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n440_make_list_α:
                        lea              rdi, [rbp + 1312]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n442_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n437_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n442_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_proc_staged_α:
                        call             proc_attrib_dcα
                                                                                        jmp   .Lx509_2
.Lx509_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n445_lit_charset_α
                                                                                        jmp   n444_assign_α
n443_call_proc_staged_β:
                                                                                        jmp   n445_lit_charset_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "attrib"
#-----------------------------------------------------------------------------------------------------------------------
n444_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n446_var_α
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_charset_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n447_scan_many_α
.Lx511_0:
                        .quad            .Lx511_0_s
.Lx511_0_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n448_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n447_scan_many_α:
                        mov              eax, r14d
.Lx515_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx515_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx515_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx515_1
                        add              eax, 1
                                                                                        jmp   .Lx515_0
.Lx515_1:
                        cmp              eax, r14d
                                                                                        je    n452_lit_charset_α
                        mov              qword ptr [rbp + 720], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 728], rcx
                                                                                        jmp   n449_scan_tab_α
n447_scan_many_β:
                                                                                        jmp   n452_lit_charset_α
.Lx515_2:
                        .quad            .Lx515_2_s
.Lx515_2_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n448_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n450_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n449_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 728]
                        cmp              rax, 1
                                                                                        jge   .Lx519_0
                        add              rax, r15
                        add              rax, 1
.Lx519_0:
                        cmp              rax, 1
                                                                                        jge   .Lx519_239
                        add              rsp, 16
                                                                                        jmp   n452_lit_charset_α
.Lx519_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx519_240
                        add              rsp, 16
                                                                                        jmp   n452_lit_charset_α
.Lx519_240:
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n451_lit_charset_α
n449_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n452_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_charset_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              dword ptr [rbp + 1268], -1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n453_scan_many_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_charset_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              dword ptr [rbp + 644], -1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n454_lit_charset_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          " }"
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_charset_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              dword ptr [rbp + 484], -1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n455_scan_many_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n453_scan_many_α:
                        mov              eax, r14d
.Lx524_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx524_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx524_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx524_1
                        add              eax, 1
                                                                                        jmp   .Lx524_0
.Lx524_1:
                        cmp              eax, r14d
                                                                                        je    n459_var_α
                        mov              qword ptr [rbp + 1248], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1256], rcx
                                                                                        jmp   n456_scan_tab_α
n453_scan_many_β:
                                                                                        jmp   n459_var_α
.Lx524_2:
                        .quad            .Lx524_2_s
.Lx524_2_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_charset_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], -1
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n457_lit_charset_α
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n455_scan_many_α:
                        mov              eax, r14d
.Lx527_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx527_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx527_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx527_1
                        add              eax, 1
                                                                                        jmp   .Lx527_0
.Lx527_1:
                        cmp              eax, r14d
                                                                                        je    n461_disjunction_α
                        mov              qword ptr [rbp + 464], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 472], rcx
                                                                                        jmp   n458_scan_tab_α
n455_scan_many_β:
                                                                                        jmp   n461_disjunction_α
.Lx527_2:
                        .quad            .Lx527_2_s
.Lx527_2_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n456_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1256]
                        cmp              rax, 1
                                                                                        jge   .Lx529_0
                        add              rax, r15
                        add              rax, 1
.Lx529_0:
                        cmp              rax, 1
                                                                                        jge   .Lx529_239
                        add              rsp, 16
                                                                                        jmp   n459_var_α
.Lx529_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx529_240
                        add              rsp, 16
                                                                                        jmp   n459_var_α
.Lx529_240:
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
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n459_var_α
n456_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n459_var_α
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_charset_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              dword ptr [rbp + 676], -1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n460_call_builtin_icon_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n458_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 472]
                        cmp              rax, 1
                                                                                        jge   .Lx532_0
                        add              rax, r15
                        add              rax, 1
.Lx532_0:
                        cmp              rax, 1
                                                                                        jge   .Lx532_239
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_α
.Lx532_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx532_240
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_α
.Lx532_240:
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
                                                                                        jmp   n461_disjunction_α
n458_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n462_scan_many_α
#-----------------------------------------------------------------------------------------------------------------------
n460_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn216:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn216]
                        lea              rsi, [rbp + 576]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n449_scan_tab_β
                                                                                        jmp   n464_scan_tab_α
n460_call_builtin_icon_β:
                                                                                        jmp   n449_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n461_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n466_lit_string_α
n461_disjunction_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        jne   .Lx536_0
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n465_disjunction_α
.Lx536_0:
                        cmp              eax, 1
                                                                                        jne   .Lx536_1
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n465_disjunction_α
.Lx536_1:
                                                                                        jmp   n465_disjunction_α
n461_disjunction_β:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        je    n461_disjunction_af
                                                                                        jmp   n461_disjunction_af
n461_disjunction_af:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 1
                                                                                        je    n467_var_α
                                                                                        jmp   n465_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n462_scan_many_α:
                        mov              eax, r14d
.Lx538_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx538_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 1208]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx538_1
                        add              eax, 1
                                                                                        jmp   .Lx538_0
.Lx538_1:
                        cmp              eax, r14d
                                                                                        je    n463_lit_integer_α
                        mov              qword ptr [rbp + 1184], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1192], rcx
                                                                                        jmp   n470_scan_tab_α
n462_scan_many_β:
                                                                                        jmp   n463_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n471_scan_move_α
.Lx539_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n464_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 568]
                        cmp              rax, 1
                                                                                        jge   .Lx541_0
                        add              rax, r15
                        add              rax, 1
.Lx541_0:
                        cmp              rax, 1
                                                                                        jge   .Lx541_239
                        add              rsp, 16
                                                                                        jmp   n449_scan_tab_β
.Lx541_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx541_240
                        add              rsp, 16
                                                                                        jmp   n449_scan_tab_β
.Lx541_240:
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
                                                                                        jmp   n472_assign_α
n464_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n449_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n465_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n474_var_α
n465_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx543_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n473_return_α
.Lx543_0:
                        cmp              eax, 1
                                                                                        jne   .Lx543_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n473_return_α
.Lx543_1:
                                                                                        jmp   n473_return_α
n465_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n475_call_value_β
                                                                                        jmp   n465_disjunction_af
n465_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n476_lit_string_α
                                                                                        jmp   proc_docommand_ω
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n477_scan_match_α
n466_lit_string_β:
                                                                                        jmp   n461_disjunction_af
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n467_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n478_lit_string_α
n467_var_β:
                                                                                        jmp   n461_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n468_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 296]
                        cmp              rax, 1
                                                                                        jge   .Lx548_0
                        add              rax, r15
                        add              rax, 1
.Lx548_0:
                        cmp              rax, 1
                                                                                        jge   .Lx548_239
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_af
.Lx548_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx548_240
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_af
.Lx548_240:
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
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n461_disjunction_as
n468_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n469_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 416]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx550_1
                        lea              rcx, [rip + .Lx550_3]
                        lea              rdx, [rip + .Lx550_4]
                                                                                        jmp   rax
.Lx550_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx550_2
.Lx550_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx550_2
.Lx550_1:
                        call             rt_faildescr@PLT
.Lx550_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n461_disjunction_af
                                                                                        jmp   n461_disjunction_as
n469_call_proc_staged_β:
                                                                                        jmp   n461_disjunction_af
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n470_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1192]
                        cmp              rax, 1
                                                                                        jge   .Lx552_0
                        add              rax, r15
                        add              rax, 1
.Lx552_0:
                        cmp              rax, 1
                                                                                        jge   .Lx552_239
                        add              rsp, 16
                                                                                        jmp   n463_lit_integer_α
.Lx552_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx552_240
                        add              rsp, 16
                                                                                        jmp   n463_lit_integer_α
.Lx552_240:
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
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n479_assign_α
n470_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n463_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n471_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx554_239
                        add              rsp, 16
                                                                                        jmp   n480_var_ref_α
.Lx554_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx554_240
                        add              rsp, 16
                                                                                        jmp   n480_var_ref_α
.Lx554_240:
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
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n480_var_ref_α
n471_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n480_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n472_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n481_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n473_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_docommand_γ
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n482_var_α
n474_var_β:
                                                                                        jmp   n465_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n475_call_value_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rbp + 96]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx560_7
                        lea              rcx, [rip + .Lx560_3]
                        lea              rdx, [rip + .Lx560_4]
                                                                                        jmp   rax
.Lx560_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx560_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx560_2
.Lx560_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx560_2
.Lx560_4:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx560_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx560_2
.Lx560_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx560_2
.Lx560_7:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rbp + 96]
                        mov              ecx, 2
                        lea              r8, [rbp + 128]
                        call             rt_call_value_gen_h@PLT
.Lx560_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n465_disjunction_af
                                                                                        jmp   n465_disjunction_as
n475_call_value_β:
                        mov              rax, qword ptr [rbp + 128]
                        cmp              rax, 1
                                                                                        jne   .Lx560_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx560_8:
                        lea              rdi, [rbp + 128]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n465_disjunction_af
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n465_disjunction_as
                                                                                        jmp   n465_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n465_disjunction_as
n476_lit_string_β:
                                                                                        jmp   n465_disjunction_af
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n477_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx563_239
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_af
.Lx563_239:
                        mov              rdi, qword ptr [rip + .Lx563_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx563_240
                        add              rsp, 16
                                                                                        jmp   n461_disjunction_af
.Lx563_240:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n468_scan_tab_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n469_call_proc_staged_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          ": unterminated command"
#-----------------------------------------------------------------------------------------------------------------------
n479_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n463_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n481_conjunction_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n484_var_α
n481_conjunction_β:
                                                                                        jmp   n452_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n485_var_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n486_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n484_var_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n488_var_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n475_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n486_subscript_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n487_scan_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n489_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n487_scan_α:
                        lea              rdi, [rbp + 912]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 912]
                        mov              r14, qword ptr [rbp + 920]
                        mov              r15, qword ptr [rbp + 928]
                                                                                        jmp   n443_call_proc_staged_α
n487_scan_β:
                                                                                        jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n490_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n491_scan_tab_α
.Lx582_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn584:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn584]
                        lea              rsi, [rbp + 768]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n445_lit_charset_α
                                                                                        jmp   n445_lit_charset_α
n490_call_builtin_icon_β:
                                                                                        jmp   n445_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n491_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, -1
                        cmp              rax, 1
                                                                                        jge   .Lx586_0
                        add              rax, r15
                        add              rax, 1
.Lx586_0:
                        cmp              rax, 1
                                                                                        jge   .Lx586_239
                        add              rsp, 16
                                                                                        jmp   n487_scan_α
.Lx586_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx586_240
                        add              rsp, 16
                                                                                        jmp   n487_scan_α
.Lx586_240:
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
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n492_assign_var_α
n491_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n487_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n487_scan_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n493_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n493_conjunction_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n494_scan_α
n493_conjunction_β:
                                                                                        jmp   n487_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n494_scan_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 912]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 912]
                        mov              r14, qword ptr [rbp + 920]
                        mov              r15, qword ptr [rbp + 928]
                                                                                        jmp   n443_call_proc_staged_α
n494_scan_β:
                                                                                        jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_β:
                                                                                        jmp   proc_docommand_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1496]
                        lea              rsp, [rbp + 1520]
                        mov              rbp, [rbp + 1512]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_ω:
                        mov              rax, [rbp + 1504]
                        lea              rsp, [rbp + 1520]
                        mov              rbp, [rbp + 1512]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_dcα:
                        pop              r11
                        sub              rsp, 1536
                        mov              qword ptr [rsp + 1512], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1488], r11
                        lea              rax, [rip + .Lx591_2]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rax, [rip + .Lx591_3]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1408
                        mov              edx, 1488
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_docommand_α_body
.Lx591_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1520
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx591_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1520
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_in_α
proc_in_α:
                        .global          proc_in_α
                        .global          proc_in_β
                        .global          proc_in_γ
                        .global          proc_in_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_in_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n593_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn639:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn639]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    proc_in_ω
                                                                                        jmp   n594_lit_charset_α
n593_call_builtin_icon_β:
                                                                                        jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_charset_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              dword ptr [rbp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n595_call_builtin_icon_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n595_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn642:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn642]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    proc_in_ω
                                                                                        jmp   n596_scan_enter_α
n595_call_builtin_icon_β:
                                                                                        jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
n596_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n597_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_charset_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              dword ptr [rbp + 884], -1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n598_scan_many_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n598_scan_many_α:
                        mov              eax, r14d
.Lx647_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx647_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx647_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx647_1
                        add              eax, 1
                                                                                        jmp   .Lx647_0
.Lx647_1:
                        cmp              eax, r14d
                                                                                        je    n600_lit_string_α
                        mov              qword ptr [rbp + 864], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 872], rcx
                                                                                        jmp   n599_scan_tab_α
n598_scan_many_β:
                                                                                        jmp   n600_lit_string_α
.Lx647_2:
                        .quad            .Lx647_2_s
.Lx647_2_s:
                        .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n599_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 872]
                        cmp              rax, 1
                                                                                        jge   .Lx649_0
                        add              rax, r15
                        add              rax, 1
.Lx649_0:
                        cmp              rax, 1
                                                                                        jge   .Lx649_239
                        add              rsp, 16
                                                                                        jmp   n600_lit_string_α
.Lx649_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx649_240
                        add              rsp, 16
                                                                                        jmp   n600_lit_string_α
.Lx649_240:
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
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n600_lit_string_α
n599_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n600_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n601_assign_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n601_assign_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n603_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_charset_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n605_scan_upto_α
.Lx654_0:
                        .quad            .Lx654_0_s
.Lx654_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n606_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n605_scan_upto_α:
                        mov              qword ptr [rbp + 272], r14
.Lx658_0:
                        mov              rax, qword ptr [rbp + 272]
                        cmp              rax, r15
                                                                                        jge   n604_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx658_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx658_1
                        mov              qword ptr [rbp + 256], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n607_scan_tab_α
.Lx658_1:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx658_0
n605_scan_upto_β:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx658_0
.Lx658_2:
                        .quad            .Lx658_2_s
.Lx658_2_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n608_scan_tab_α
.Lx659_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n607_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 264]
                        cmp              rax, 1
                                                                                        jge   .Lx661_0
                        add              rax, r15
                        add              rax, 1
.Lx661_0:
                        cmp              rax, 1
                                                                                        jge   .Lx661_239
                        add              rsp, 16
                                                                                        jmp   n605_scan_upto_β
.Lx661_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx661_240
                        add              rsp, 16
                                                                                        jmp   n605_scan_upto_β
.Lx661_240:
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
                                                                                        jmp   n609_binop_α
n607_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n605_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n608_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx663_0
                        add              rax, r15
                        add              rax, 1
.Lx663_0:
                        cmp              rax, 1
                                                                                        jge   .Lx663_239
                        add              rsp, 16
                                                                                        jmp   proc_in_ω
.Lx663_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx663_240
                        add              rsp, 16
                                                                                        jmp   proc_in_ω
.Lx663_240:
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n610_binop_α
n608_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
n609_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n611_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n610_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n612_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n611_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n613_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n612_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n614_return_α
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n615_scan_move_α
.Lx668_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n614_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_in_γ
#-----------------------------------------------------------------------------------------------------------------------
n615_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx671_239
                        add              rsp, 16
                                                                                        jmp   n616_disjunction_α
.Lx671_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx671_240
                        add              rsp, 16
                                                                                        jmp   n616_disjunction_α
.Lx671_240:
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
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n616_disjunction_α
n615_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n616_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n616_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n618_keyword_icon_α
n616_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx673_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n617_conjunction_α
.Lx673_0:
                        cmp              eax, 1
                                                                                        jne   .Lx673_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n617_conjunction_α
.Lx673_1:
                                                                                        jmp   n617_conjunction_α
n616_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n602_var_α
                                                                                        jmp   n602_var_α
n616_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n619_var_α
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n617_conjunction_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n602_var_α
n617_conjunction_β:
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n618_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx675_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n616_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n622_scan_any_α
n618_keyword_icon_β:
                                                                                        jmp   n616_disjunction_af
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n619_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n623_lit_integer_α
n619_var_β:
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n620_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n616_disjunction_as
n620_assign_β:
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n621_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n616_disjunction_as
n621_assign_β:
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n622_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n616_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 648]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        je    n616_disjunction_af
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n624_var_α
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n625_scan_move_α
.Lx682_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n624_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n626_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n625_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx686_239
                        add              rsp, 16
                                                                                        jmp   n602_var_α
.Lx686_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx686_240
                        add              rsp, 16
                                                                                        jmp   n602_var_α
.Lx686_240:
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
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n627_binop_α
n625_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n628_lit_integer_α
.Lx687_0:
                        .quad            .Lx687_0_s
.Lx687_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n627_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n621_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n628_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n629_lit_integer_α
.Lx689_0:
                        .quad            128
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n630_scan_move_α
.Lx690_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n630_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx692_239
                        add              rsp, 16
                                                                                        jmp   n602_var_α
.Lx692_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx692_240
                        add              rsp, 16
                                                                                        jmp   n602_var_α
.Lx692_240:
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
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n631_call_builtin_icon_α
n630_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n631_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn694:              .string          "ord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn694]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n602_var_α
                                                                                        jmp   n632_op75_α
n631_call_builtin_icon_β:
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n632_op75_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 7
                                                                                        je    .Lx696_1
                        cmp              eax, 6
                                                                                        jne   .Lx696_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx696_0
.Lx696_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n633_binop_α
.Lx696_0:
                        lea              rdi, [rbp + 528]
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 496]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n633_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n633_binop_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx697_0
                        mov              rax, 128
                        mov              rcx, qword ptr [rbp + 504]
                        add              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n634_call_builtin_icon_α
.Lx697_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n602_var_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n634_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n634_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn699:              .string          "char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn699]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n602_var_α
                                                                                        jmp   n635_binop_α
n634_call_builtin_icon_β:
                                                                                        jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n635_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n636_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n636_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n620_assign_α
#-----------------------------------------------------------------------------------------------------------------------
proc_in_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_in_β:
                                                                                        jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_in_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1064]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_in_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_in_dcα:
                        pop              r11
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1056], r11
                        lea              rax, [rip + .Lx702_2]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rax, [rip + .Lx702_3]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rdi, rbp
                        mov              esi, 1040
                        mov              edx, 1056
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_in_α_body
.Lx702_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx702_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_divert_α
proc_divert_α:
                        .global          proc_divert_α
                        .global          proc_divert_β
                        .global          proc_divert_γ
                        .global          proc_divert_ω
                        sub              rsp, 1312
                        mov              [rsp + 1288], rcx
                        mov              [rsp + 1296], rdx
                        mov              [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1248
                        mov              edx, 1280
                        call             rt_jmp_frame_lexprep2@PLT
proc_divert_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n703_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n704_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n704_unop_test_α:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 99
                                                                                        je    n705_keyword_icon_α
                        cmp              eax, 0
                                                                                        je    n705_keyword_icon_α
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n706_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n705_keyword_icon_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                                                                                        jmp   n707_assign_α
n705_keyword_icon_β:
                                                                                        jmp   n709_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n706_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn756:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn756]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n705_keyword_icon_α
                                                                                        jmp   n705_keyword_icon_α
n706_call_builtin_icon_β:
                                                                                        jmp   n705_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n707_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n708_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n708_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n709_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n709_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n711_var_α
n709_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx760_0
                                                                                        jmp   n710_var_α
.Lx760_0:
                                                                                        jmp   n710_var_α
n709_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n710_var_α
n709_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n710_var_α
#-----------------------------------------------------------------------------------------------------------------------
n710_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n713_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n715_unop_α
n711_var_β:
                                                                                        jmp   n709_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n712_conjunction_α:
                                                                                        jmp   n709_disjunction_as
n712_conjunction_β:
                                                                                        jmp   n710_var_α
#-----------------------------------------------------------------------------------------------------------------------
n713_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn767:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn767]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n714_disjunction_α
                                                                                        jmp   n716_assign_α
n713_call_builtin_icon_β:
                                                                                        jmp   n714_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n714_disjunction_α:
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0
                                                                                        jmp   n718_var_α
n714_disjunction_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        jne   .Lx769_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n717_disjunction_α
.Lx769_0:
                                                                                        jmp   n717_disjunction_α
n714_disjunction_β:
                        mov              eax, dword ptr [rbp + 416]
                                                                                        jmp   n717_disjunction_α
n714_disjunction_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                                                                                        jmp   n717_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n715_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n720_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n716_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n714_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n717_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n721_var_α
n717_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx773_0
                                                                                        jmp   proc_divert_ω
.Lx773_0:
                        cmp              eax, 1
                                                                                        jne   .Lx773_1
                                                                                        jmp   proc_divert_ω
.Lx773_1:
                                                                                        jmp   proc_divert_ω
n717_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_divert_ω
                                                                                        jmp   proc_divert_ω
n717_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n722_lit_string_α
                                                                                        jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n718_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n725_call_builtin_icon_α
n718_var_β:
                                                                                        jmp   n714_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n719_conjunction_α:
                                                                                        jmp   n714_disjunction_as
n719_conjunction_β:
                                                                                        jmp   n717_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n726_binop_test_α
.Lx777_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n721_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n727_lit_string_α
n721_var_β:
                                                                                        jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n728_var_α
n722_lit_string_β:
                                                                                        jmp   proc_divert_ω
.Lx780_0:
                        .quad            .Lx780_0_s
.Lx780_0_s:
                        .string          "divert: can't open "
#-----------------------------------------------------------------------------------------------------------------------
n723_conjunction_α:
                                                                                        jmp   n717_disjunction_as
n723_conjunction_β:
                                                                                        jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n724_conjunction_α:
                                                                                        jmp   n717_disjunction_as
n724_conjunction_β:
                                                                                        jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n725_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn784:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn784]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n714_disjunction_af
                                                                                        jmp   n729_assign_α
n725_call_builtin_icon_β:
                                                                                        jmp   n714_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n726_binop_test_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 100
                                                                                        je    .Lx785_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 100
                                                                                        je    .Lx785_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx785_2
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                                                                                        jne   .Lx785_2
.Lx785_1:
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, qword ptr [rbp + 1112]
                        cmp              rax, rcx
                                                                                        je    n709_disjunction_af
                        mov              rcx, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rcx
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rcx
                                                                                        jmp   n730_lit_string_α
.Lx785_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 10
                        lea              r9, [rbp + 1056]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx785_1
                        cmp              eax, 1
                                                                                        je    n709_disjunction_af
                                                                                        jmp   n730_lit_string_α
.Lx785_2:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n709_disjunction_af
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n730_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n731_call_builtin_icon_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n728_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n732_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n729_assign_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n733_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n734_call_proc_staged_α
.Lx790_0:
                        .quad            .Lx790_0_s
.Lx790_0_s:
                        .string          "usage: {divert filename}"
#-----------------------------------------------------------------------------------------------------------------------
n731_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn792:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn792]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n717_disjunction_af
                                                                                        jmp   n735_assign_α
n731_call_builtin_icon_β:
                                                                                        jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n732_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rbp + 368]
                        lea              rdx, [rbp + 384]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx794_1
                        lea              rcx, [rip + .Lx794_3]
                        lea              rdx, [rip + .Lx794_4]
                                                                                        jmp   rax
.Lx794_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx794_2
.Lx794_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx794_2
.Lx794_1:
                        call             rt_faildescr@PLT
.Lx794_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_divert_ω
                                                                                        jmp   proc_divert_ω
n732_call_proc_staged_β:
                                                                                        jmp   proc_divert_ω
.Lx794_0:
                        .quad            .Lx794_0_s
.Lx794_0_s:
                        .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n733_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n737_var_α
n733_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx796_0
                                                                                        jmp   n736_var_α
.Lx796_0:
                                                                                        jmp   n736_var_α
n733_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                                                                                        jmp   n736_var_α
n733_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                                                                                        jmp   n736_var_α
#-----------------------------------------------------------------------------------------------------------------------
n734_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rbp + 1040]
                        call             rt_proc_call_open_det1@PLT
                        test             rax, rax
                                                                                        je    .Lx798_1
                        lea              rcx, [rip + .Lx798_3]
                        lea              rdx, [rip + .Lx798_4]
                                                                                        jmp   rax
.Lx798_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx798_2
.Lx798_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx798_2
.Lx798_1:
                        call             rt_faildescr@PLT
.Lx798_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    proc_divert_ω
                                                                                        jmp   proc_divert_ω
n734_call_proc_staged_β:
                                                                                        jmp   proc_divert_ω
.Lx798_0:
                        .quad            .Lx798_0_s
.Lx798_0_s:
                        .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n735_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n739_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n736_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n740_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n737_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n741_call_builtin_icon_α
n737_var_β:
                                                                                        jmp   n733_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n738_conjunction_α:
                                                                                        jmp   n733_disjunction_as
n738_conjunction_β:
                                                                                        jmp   n736_var_α
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n742_call_proc_staged_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n740_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn807:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn807]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n717_disjunction_α
                                                                                        jmp   n719_conjunction_α
n740_call_builtin_icon_β:
                                                                                        jmp   n717_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n741_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn809:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n733_disjunction_af
                                                                                        jmp   n743_lit_string_α
n741_call_builtin_icon_β:
                                                                                        jmp   n733_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        call             proc_out_dcα
                                                                                        jmp   .Lx811_2
.Lx811_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n744_lit_string_α
                                                                                        jmp   n744_lit_string_α
n742_call_proc_staged_β:
                                                                                        jmp   n744_lit_string_α
.Lx811_0:
                        .quad            .Lx811_0_s
.Lx811_0_s:
                        .string          "out"
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n745_binop_test_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n746_return_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n745_binop_test_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n733_disjunction_af
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n746_return_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_divert_γ
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n748_var_α
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "divert: won't overwrite non-htprep file "
#-----------------------------------------------------------------------------------------------------------------------
n748_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n749_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n749_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 704]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx820_1
                        lea              rcx, [rip + .Lx820_3]
                        lea              rdx, [rip + .Lx820_4]
                                                                                        jmp   rax
.Lx820_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx820_2
.Lx820_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx820_2
.Lx820_1:
                        call             rt_faildescr@PLT
.Lx820_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n750_var_α
                                                                                        jmp   n750_var_α
n749_call_proc_staged_β:
                                                                                        jmp   n750_var_α
.Lx820_0:
                        .quad            .Lx820_0_s
.Lx820_0_s:
                        .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n750_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n751_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n751_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn824:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn824]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    proc_divert_ω
                                                                                        jmp   proc_divert_ω
n751_call_builtin_icon_β:
                                                                                        jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_β:
                                                                                        jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1288]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_ω:
                        mov              rax, [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_dcα:
                        pop              r11
                        sub              rsp, 1328
                        mov              qword ptr [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1280], r11
                        lea              rax, [rip + .Lx825_2]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rax, [rip + .Lx825_3]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1248
                        mov              edx, 1280
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_divert_α_body
.Lx825_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1312
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx825_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1312
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_out_α
proc_out_α:
                        .global          proc_out_α
                        .global          proc_out_β
                        .global          proc_out_γ
                        .global          proc_out_ω
                        sub              rsp, 1072
                        mov              [rsp + 1048], rcx
                        mov              [rsp + 1056], rdx
                        mov              [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1040
                        call             rt_jmp_frame_lexprep2@PLT
proc_out_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n826_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n828_var_ref_α
n826_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx863_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n827_var_α
.Lx863_0:
                                                                                        jmp   n827_var_α
n826_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                                                                                        jmp   n827_var_α
n826_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                                                                                        jmp   n827_var_α
#-----------------------------------------------------------------------------------------------------------------------
n827_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n830_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n828_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n832_nulltest_var_α
n828_var_ref_β:
                                                                                        jmp   n826_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n829_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn869:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n827_var_α
                                                                                        jmp   n826_disjunction_as
n829_call_builtin_icon_β:
                                                                                        jmp   n827_var_α
#-----------------------------------------------------------------------------------------------------------------------
n830_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n831_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_out_γ
#-----------------------------------------------------------------------------------------------------------------------
n832_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 99
                                                                                        je    n826_disjunction_af
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n826_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n826_disjunction_af
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n834_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n833_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n835_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n834_disjunction_α:
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              dword ptr [rbp + 992], 0
                                                                                        jmp   n838_var_α
n834_disjunction_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        jne   .Lx876_0
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n837_assign_var_α
.Lx876_0:
                        cmp              eax, 1
                                                                                        jne   .Lx876_1
                                                                                        jmp   n837_assign_var_α
.Lx876_1:
                                                                                        jmp   n837_assign_var_α
n834_disjunction_β:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        je    n834_disjunction_af
                                                                                        jmp   n834_disjunction_af
n834_disjunction_af:
                        add              dword ptr [rbp + 992], 1
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 1
                                                                                        je    proc_out_ω
                                                                                        jmp   n826_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n835_lit_charset_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              dword ptr [rbp + 404], -1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n840_scan_upto_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n841_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n837_assign_var_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n826_disjunction_af
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n843_var_α
#-----------------------------------------------------------------------------------------------------------------------
n838_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n839_unop_test_α
n838_var_β:
                                                                                        jmp   n834_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n839_unop_test_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 99
                                                                                        je    n834_disjunction_af
                        cmp              eax, 0
                                                                                        je    n834_disjunction_af
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n834_disjunction_as
n839_unop_test_β:
                                                                                        jmp   n834_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n840_scan_upto_α:
                        mov              qword ptr [rbp + 384], r14
.Lx883_0:
                        mov              rax, qword ptr [rbp + 384]
                        cmp              rax, r15
                                                                                        jge   n836_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx883_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx883_1
                        mov              qword ptr [rbp + 368], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n844_scan_tab_α
.Lx883_1:
                        inc              qword ptr [rbp + 384]
                                                                                        jmp   .Lx883_0
n840_scan_upto_β:
                        inc              qword ptr [rbp + 384]
                                                                                        jmp   .Lx883_0
.Lx883_2:
                        .quad            .Lx883_2_s
.Lx883_2_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n841_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n845_scan_tab_α
.Lx884_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n842_scan_α:
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   n831_return_α
n842_scan_β:
                                                                                        jmp   n831_return_α
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n846_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 376]
                        cmp              rax, 1
                                                                                        jge   .Lx889_0
                        add              rax, r15
                        add              rax, 1
.Lx889_0:
                        cmp              rax, 1
                                                                                        jge   .Lx889_239
                        add              rsp, 16
                                                                                        jmp   n840_scan_upto_β
.Lx889_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx889_240
                        add              rsp, 16
                                                                                        jmp   n840_scan_upto_β
.Lx889_240:
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n847_call_builtin_icon_α
n844_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n840_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n845_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx891_0
                        add              rax, r15
                        add              rax, 1
.Lx891_0:
                        cmp              rax, 1
                                                                                        jge   .Lx891_239
                        add              rsp, 16
                                                                                        jmp   n842_scan_α
.Lx891_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx891_240
                        add              rsp, 16
                                                                                        jmp   n842_scan_α
.Lx891_240:
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
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n848_call_builtin_icon_α
n845_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n842_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n846_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n829_call_builtin_icon_α
.Lx892_0:
                        .quad            .Lx892_0_s
.Lx892_0_s:
                        .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n847_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn894:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n840_scan_upto_β
                                                                                        jmp   n849_lit_integer_α
n847_call_builtin_icon_β:
                                                                                        jmp   n840_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n848_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn896:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn896]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n842_scan_α
                                                                                        jmp   n850_conjunction_α
n848_call_builtin_icon_β:
                                                                                        jmp   n842_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n849_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx897_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n851_scan_move_α
.Lx897_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n850_conjunction_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n852_scan_α
n850_conjunction_β:
                                                                                        jmp   n842_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n851_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx900_239
                        add              rsp, 16
                                                                                        jmp   n853_var_α
.Lx900_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx900_240
                        add              rsp, 16
                                                                                        jmp   n853_var_α
.Lx900_240:
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n853_var_α
n851_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n852_scan_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   n831_return_α
n852_scan_β:
                                                                                        jmp   n831_return_α
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n854_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n854_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx904_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n855_lit_integer_α
.Lx904_0:
                        .quad            127
#-----------------------------------------------------------------------------------------------------------------------
n855_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n856_scan_move_α
.Lx905_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n856_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx907_239
                        add              rsp, 16
                                                                                        jmp   n833_var_α
.Lx907_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx907_240
                        add              rsp, 16
                                                                                        jmp   n833_var_α
.Lx907_240:
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n857_call_builtin_icon_α
n856_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n857_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn909:              .string          "ord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn909]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n833_var_α
                                                                                        jmp   n858_call_builtin_icon_α
n857_call_builtin_icon_β:
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n858_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn911:              .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn911]
                        lea              rsi, [rbp + 576]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n833_var_α
                                                                                        jmp   n859_call_builtin_icon_α
n858_call_builtin_icon_β:
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n859_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn913:              .string          "char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn913]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n833_var_α
                                                                                        jmp   n860_call_builtin_icon_α
n859_call_builtin_icon_β:
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n860_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn915:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn915]
                        lea              rsi, [rbp + 448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n833_var_α
                                                                                        jmp   n861_conjunction_α
n860_call_builtin_icon_β:
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
n861_conjunction_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n833_var_α
n861_conjunction_β:
                                                                                        jmp   n833_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_out_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_out_β:
                                                                                        jmp   proc_out_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_out_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1048]
                        lea              rsp, [rbp + 1072]
                        mov              rbp, [rbp + 1064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_out_ω:
                        mov              rax, [rbp + 1056]
                        lea              rsp, [rbp + 1072]
                        mov              rbp, [rbp + 1064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_out_dcα:
                        pop              r11
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1040], r11
                        lea              rax, [rip + .Lx917_2]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rax, [rip + .Lx917_3]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1040
                        mov              edx, 1040
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_out_α_body
.Lx917_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1072
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx917_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1072
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwarn_α
proc_lwarn_α:
                        .global          proc_lwarn_α
                        .global          proc_lwarn_β
                        .global          proc_lwarn_γ
                        .global          proc_lwarn_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_lwarn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n919_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n919_lit_string_α:
                        mov              qword ptr [rsp + 256], 1
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n921_var_α
.Lx931_0:
                        .quad            .Lx931_0_s
.Lx931_0_s:
                        .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n922_var_α
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          "warn"
#-----------------------------------------------------------------------------------------------------------------------
n921_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n923_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n922_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n924_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n923_binop_α:
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n926_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n924_call_value_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 80], 0
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx938_7
                        lea              rcx, [rip + .Lx938_3]
                        lea              rdx, [rip + .Lx938_4]
                                                                                        jmp   rax
.Lx938_3:
                        mov              qword ptr [rsp + 88], rsp
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax
                                                                                        jne   .Lx938_5
                        mov              qword ptr [rsp + 80], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx938_2
.Lx938_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx938_2
.Lx938_4:
                        mov              qword ptr [rsp + 88], rsp
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax
                                                                                        jne   .Lx938_6
                        mov              qword ptr [rsp + 80], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx938_2
.Lx938_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx938_2
.Lx938_7:
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        lea              r8, [rsp + 80]
                        call             rt_call_apply_gen_h@PLT
.Lx938_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n925_return_α
                                                                                        jmp   n925_return_α
n924_call_value_β:
                        mov              rax, qword ptr [rsp + 80]
                        cmp              rax, 1
                                                                                        jne   .Lx938_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 88]
                                                                                        jmp   qword ptr [rsp]
.Lx938_8:
                        lea              rdi, [rsp + 80]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n925_return_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n925_return_α
                                                                                        jmp   n925_return_α
#-----------------------------------------------------------------------------------------------------------------------
n925_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_lwarn_γ
#-----------------------------------------------------------------------------------------------------------------------
n926_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n927_binop_α
.Lx940_0:
                        .quad            .Lx940_0_s
.Lx940_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n927_binop_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n928_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n928_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn943:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn943]
                        lea              rsi, [rsp + 160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n920_lit_string_α
                                                                                        jmp   n920_lit_string_α
n928_call_builtin_icon_β:
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_β:
                                                                                        jmp   proc_lwarn_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 312]
                        add              rsp, 336
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_ω:
                        mov              rax, [rsp + 320]
                        add              rsp, 336
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_warn_α
proc_warn_α:
                        .global          proc_warn_α
                        .global          proc_warn_β
                        .global          proc_warn_γ
                        .global          proc_warn_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              rdi, rsp
                        mov              esi, 432
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_warn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n945_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n945_lit_string_α:
                        mov              qword ptr [rsp + 416], 1
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n947_call_builtin_icon_α
.Lx961_0:
                        .quad            .Lx961_0_s
.Lx961_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n946_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n948_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n947_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn965:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn965]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n946_var_α
                                                                                        jmp   n946_var_α
n947_call_builtin_icon_β:
                                                                                        jmp   n946_var_α
#-----------------------------------------------------------------------------------------------------------------------
n948_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx966_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n949_lit_string_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n950_call_builtin_icon_α
n948_keyword_icon_β:
                                                                                        jmp   n949_lit_string_α
.Lx966_0:
                        .quad            .Lx966_0_s
.Lx966_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n949_lit_string_α:
                        mov              qword ptr [rsp + 112], 1
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n951_var_α
.Lx967_0:
                        .quad            .Lx967_0_s
.Lx967_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n950_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn969:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn969]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n949_lit_string_α
                                                                                        jmp   n949_lit_string_α
n950_call_builtin_icon_β:
                                                                                        jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n952_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n952_call_value_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [rsp + 160], 0
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx973_7
                        lea              rcx, [rip + .Lx973_3]
                        lea              rdx, [rip + .Lx973_4]
                                                                                        jmp   rax
.Lx973_3:
                        mov              qword ptr [rsp + 168], rsp
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax
                                                                                        jne   .Lx973_5
                        mov              qword ptr [rsp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx973_2
.Lx973_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx973_2
.Lx973_4:
                        mov              qword ptr [rsp + 168], rsp
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax
                                                                                        jne   .Lx973_6
                        mov              qword ptr [rsp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx973_2
.Lx973_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx973_2
.Lx973_7:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        lea              r8, [rsp + 160]
                        call             rt_call_apply_gen_h@PLT
.Lx973_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n953_var_α
                                                                                        jmp   n953_var_α
n952_call_value_β:
                        mov              rax, qword ptr [rsp + 160]
                        cmp              rax, 1
                                                                                        jne   .Lx973_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx973_8:
                        lea              rdi, [rsp + 160]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n953_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n953_var_α
                                                                                        jmp   n953_var_α
#-----------------------------------------------------------------------------------------------------------------------
n953_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n954_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n954_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n956_op75_α
.Lx975_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n955_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_warn_γ
#-----------------------------------------------------------------------------------------------------------------------
n956_op75_α:
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 7
                                                                                        je    .Lx978_1
                        cmp              eax, 6
                                                                                        jne   .Lx978_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx978_0
.Lx978_1:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n957_binop_α
.Lx978_0:
                        lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n957_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n957_binop_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx979_0
                        mov              rax, qword ptr [rsp + 72]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 48], 6
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n958_assign_α
.Lx979_0:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n955_return_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n958_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n958_assign_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n955_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_β:
                                                                                        jmp   proc_warn_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 440]
                        add              rsp, 464
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_ω:
                        mov              rax, [rsp + 448]
                        add              rsp, 464
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "tag(label,line)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "braces"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_braces_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1088
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_braces_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "newtag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_newtag_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_newtag_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "attrib"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_attrib_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_attrib_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "attval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_attval_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1216
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_attval_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "docommand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_docommand_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1488
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_docommand_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "in"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_in_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_in_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "divert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_divert_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_divert_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "out"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_out_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1040
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_out_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "lwarn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_lwarn_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "warn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_warn_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "tagstack"
.Lgvan1:                .string          "cmdtable"
.Lgvan2:                .string          "infile"
.Lgvan3:                .string          "outfile"
.Lgvan4:                .string          "stdout"
.Lgvan5:                .string          "lineno"
.Lgvan6:                .string          "errors"
.Lgvan7:                .string          "idset"
.Lgvan8:                .string          "attval__STATIC__valset"
.Lgvan9:                .string          "attval__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 10
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 10
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
                        sub              rsp, 1400
                        mov              rdi, rsp
                        mov              ecx, 1400
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1392], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n981_lit_charset_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              dword ptr [rbp + 1316], -1
                        mov              rax, qword ptr [rip + .Lx1051_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n982_lit_charset_α
.Lx1051_0:
                        .quad            .Lx1051_0_s
.Lx1051_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n982_lit_charset_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              dword ptr [rbp + 1332], -1
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n983_binop_α
.Lx1052_0:
                        .quad            .Lx1052_0_s
.Lx1052_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n983_binop_α:
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n985_lit_integer_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n984_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n984_lit_charset_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              dword ptr [rbp + 1348], -1
                        mov              rax, qword ptr [rip + .Lx1054_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n986_binop_α
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "-."
#-----------------------------------------------------------------------------------------------------------------------
n985_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n987_assign_α
.Lx1055_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n986_binop_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n985_lit_integer_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n988_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n987_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n989_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n988_assign_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n985_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n989_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n990_assign_α
.Lx1059_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n990_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n991_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n991_make_list_α:
                        lea              rdi, [rbp + 1248]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n992_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n992_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n993_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n993_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1064_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n995_call_builtin_icon_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n994_assign_α
n993_keyword_icon_β:
                                                                                        jmp   n995_call_builtin_icon_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n994_assign_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n995_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n995_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1067:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1067]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n997_var_ref_α
                                                                                        jmp   n996_assign_α
n995_call_builtin_icon_β:
                                                                                        jmp   n997_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n996_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n997_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n997_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n998_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n998_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n999_subscript_α
.Lx1071_0:
                        .quad            .Lx1071_0_s
.Lx1071_0_s:
                        .string          "divert"
#-----------------------------------------------------------------------------------------------------------------------
n999_subscript_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1001_disjunction_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n1000_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1074_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n1002_assign_var_α
.Lx1074_0:
                        .quad            .Lx1074_0_s
.Lx1074_0_s:
                        .string          "divert"
#-----------------------------------------------------------------------------------------------------------------------
n1001_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n1004_var_α
n1001_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx1076_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1003_call_proc_staged_α
.Lx1076_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1076_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1003_call_proc_staged_α
.Lx1076_1:
                                                                                        jmp   n1003_call_proc_staged_α
n1001_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n1003_call_proc_staged_α
                                                                                        jmp   n1005_disjunction_β
n1001_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n1005_disjunction_α
                                                                                        jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1002_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1001_disjunction_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n1001_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_proc_staged_α:
                        call             proc_in_dcα
                                                                                        jmp   .Lx1079_2
.Lx1079_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n1009_var_α
                                                                                        jmp   n1008_assign_α
n1003_call_proc_staged_β:
                                                                                        jmp   n1009_var_α
.Lx1079_0:
                        .quad            .Lx1079_0_s
.Lx1079_0_s:
                        .string          "in"
#-----------------------------------------------------------------------------------------------------------------------
n1004_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1010_unop_α
n1004_var_β:
                                                                                        jmp   n1001_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1005_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n1011_var_ref_α
n1005_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx1083_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1007_assign_α
.Lx1083_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1083_1
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1007_assign_α
.Lx1083_1:
                                                                                        jmp   n1007_assign_α
n1005_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n1005_disjunction_af
                                                                                        jmp   n1005_disjunction_af
n1005_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n1012_lit_string_α
                                                                                        jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n1001_disjunction_as
n1006_assign_β:
                                                                                        jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1007_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1001_disjunction_as
n1007_assign_β:
                                                                                        jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n1015_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1009_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n1016_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n1018_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n1019_lit_integer_α
n1011_var_ref_β:
                                                                                        jmp   n1005_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1012_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx1091_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n1020_var_ref_α
n1012_lit_string_β:
                                                                                        jmp   n1005_disjunction_af
.Lx1091_0:
                        .quad            .Lx1091_0_s
.Lx1091_0_s:
                        .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n1013_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn1093:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1093]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n1005_disjunction_af
                                                                                        jmp   n1005_disjunction_as
n1013_call_builtin_icon_β:
                                                                                        jmp   n1005_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1014_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn1095:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1095]
                        lea              rsi, [rbp + 960]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n1005_disjunction_af
                                                                                        jmp   n1005_disjunction_as
n1014_call_builtin_icon_β:
                                                                                        jmp   n1005_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n1021_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1098:             .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1098]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n1017_disjunction_α
                                                                                        jmp   n1023_assign_α
n1016_call_builtin_icon_β:
                                                                                        jmp   n1017_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n1024_var_α
n1017_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx1100_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   main_ω
.Lx1100_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1100_1
                                                                                        jmp   main_ω
.Lx1100_1:
                                                                                        jmp   main_ω
n1017_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n1017_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n1025_return_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1027_binop_test_α
.Lx1101_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1019_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx1102_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1028_subscript_α
.Lx1102_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n1029_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1021_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n1030_op75_α
.Lx1105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1022_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1031_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1023_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n1033_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1024_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n1034_lit_integer_α
n1024_var_β:
                                                                                        jmp   n1017_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1025_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1026_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx1112_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n1017_disjunction_as
n1026_proc_value_β:
                                                                                        jmp   main_ω
.Lx1112_0:
                        .quad            .Lx1112_0_s
.Lx1112_0_s:
                        .string          "stop"
#-----------------------------------------------------------------------------------------------------------------------
n1027_binop_test_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 100
                                                                                        je    .Lx1113_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 100
                                                                                        je    .Lx1113_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx1113_2
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx1113_2
.Lx1113_1:
                        mov              rax, qword ptr [rbp + 744]
                        mov              rcx, qword ptr [rbp + 776]
                        cmp              rax, rcx
                                                                                        jne   n1001_disjunction_af
                        mov              rcx, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rcx
                        mov              rcx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rcx
                                                                                        jmp   n1035_keyword_icon_α
.Lx1113_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 9
                        lea              r9, [rbp + 720]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1113_1
                        cmp              eax, 1
                                                                                        je    n1001_disjunction_af
                                                                                        jmp   n1035_keyword_icon_α
.Lx1113_2:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1001_disjunction_af
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n1035_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1028_subscript_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1005_disjunction_af
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n1036_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx1115_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n1037_subscript_α
.Lx1115_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1030_op75_α:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 7
                                                                                        je    .Lx1117_1
                        cmp              eax, 6
                                                                                        jne   .Lx1117_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx1117_0
.Lx1117_1:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1038_binop_α
.Lx1117_0:
                        lea              rdi, [rbp + 608]
                        lea              rsi, [rbp + 624]
                        lea              rdx, [rbp + 592]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1038_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        call             proc_braces_dcα
                                                                                        jmp   .Lx1119_2
.Lx1119_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n1032_var_α
                                                                                        jmp   n1039_assign_α
n1031_call_proc_staged_β:
                                                                                        jmp   n1032_var_α
.Lx1119_0:
                        .quad            .Lx1119_0_s
.Lx1119_0_s:
                        .string          "braces"
#-----------------------------------------------------------------------------------------------------------------------
n1032_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1040_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1033_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx1122_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1041_var_α
.Lx1122_0:
                        .quad            .Lx1122_0_s
.Lx1122_0_s:
                        .string          "unclosed tag {"
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1042_binop_test_α
.Lx1123_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1035_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1124_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n1003_call_proc_staged_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n1006_assign_α
n1035_keyword_icon_β:
                                                                                        jmp   n1003_call_proc_staged_α
.Lx1124_0:
                        .quad            .Lx1124_0_s
.Lx1124_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n1036_deref_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1005_disjunction_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n1013_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1005_disjunction_af
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n1043_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1038_binop_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx1127_0
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 576], 6
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n1044_assign_α
.Lx1127_0:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1022_var_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n1044_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1039_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n1032_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1040_call_proc_staged_α:
                        lea              rsi, [rbp + 496]
                        call             proc_out_dcα
                                                                                        jmp   .Lx1130_2
.Lx1130_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n1003_call_proc_staged_α
                                                                                        jmp   n1045_conjunction_α
n1040_call_proc_staged_β:
                                                                                        jmp   n1003_call_proc_staged_α
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          "out"
#-----------------------------------------------------------------------------------------------------------------------
n1041_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1046_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_binop_test_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 100
                                                                                        je    .Lx1133_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 100
                                                                                        je    .Lx1133_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx1133_2
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx1133_2
.Lx1133_1:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx
                                                                                        jle   n1017_disjunction_af
                        mov              rcx, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rcx
                        mov              rcx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rcx
                                                                                        jmp   n1026_proc_value_α
.Lx1133_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              r8d, 7
                        lea              r9, [rbp + 80]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1133_1
                        cmp              eax, 1
                                                                                        je    n1017_disjunction_af
                                                                                        jmp   n1026_proc_value_α
.Lx1133_2:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1017_disjunction_af
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1026_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1043_deref_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1005_disjunction_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n1014_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1022_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_conjunction_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1003_call_proc_staged_α
n1045_conjunction_β:
                                                                                        jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1137_0]
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n1009_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n1047_lit_string_α
.Lx1137_0:
                        .quad            .Lx1137_0_s
.Lx1137_0_s:
                        .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n1047_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1138_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1048_var_α
.Lx1138_0:
                        .quad            .Lx1138_0_s
.Lx1138_0_s:
                        .string          "} from line "
#-----------------------------------------------------------------------------------------------------------------------
n1048_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1049_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1049_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1141_0]
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n1009_var_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n1050_call_proc_staged_α
.Lx1141_0:
                        .quad            .Lx1141_0_s
.Lx1141_0_s:
                        .string          "line"
#-----------------------------------------------------------------------------------------------------------------------
n1050_call_proc_staged_α:
                        mov              edi, 9
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 320]
                        lea              rcx, [rbp + 352]
                        lea              r8, [rbp + 368]
                        call             rt_proc_call_open_det4@PLT
                        test             rax, rax
                                                                                        je    .Lx1143_1
                        lea              rcx, [rip + .Lx1143_3]
                        lea              rdx, [rip + .Lx1143_4]
                                                                                        jmp   rax
.Lx1143_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1143_2
.Lx1143_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1143_2
.Lx1143_1:
                        call             rt_faildescr@PLT
.Lx1143_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n1009_var_α
                                                                                        jmp   n1009_var_α
n1050_call_proc_staged_β:
                                                                                        jmp   n1009_var_α
.Lx1143_0:
                        .quad            .Lx1143_0_s
.Lx1143_0_s:
                        .string          "warn"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1392]
                        add              rsp, 1400
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1392]
                        add              rsp, 1400
                        ret
                        .section         .note.GNU-stack,"",@progbits
