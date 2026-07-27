                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_alts_α
proc_alts_α:
                        .global          proc_alts_α
                        .global          proc_alts_β
                        .global          proc_alts_γ
                        .global          proc_alts_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_alts_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_make_list_α:
                        lea              rdi, [rbp + 512]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n3_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n6_return_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_alts_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n10_lit_charset_α
n7_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx33_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n9_scan_tab_α
.Lx33_0:
                        cmp              eax, 1
                                                                                        jne   .Lx33_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n9_scan_tab_α
.Lx33_1:
                                                                                        jmp   n9_scan_tab_α
n7_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        je    n11_scan_upto_β
                                                                                        jmp   n7_disjunction_af
n7_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 1
                                                                                        je    n12_lit_integer_α
                                                                                        jmp   n8_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_α:
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n4_var_α
n8_scan_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 296]
                        cmp              rax, 1
                                                                                        jge   .Lx37_0
                        add              rax, r15
                        add              rax, 1
.Lx37_0:
                        cmp              rax, 1
                                                                                        jge   .Lx37_239
                        add              rsp, 16
                                                                                        jmp   n7_disjunction_β
.Lx37_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx37_240
                        add              rsp, 16
                                                                                        jmp   n7_disjunction_β
.Lx37_240:
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
                                                                                        jmp   n13_call_proc_staged_α
n9_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n7_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_charset_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              dword ptr [rbp + 356], -1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n11_scan_upto_α
n10_lit_charset_β:
                                                                                        jmp   n7_disjunction_af
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_upto_α:
                        mov              qword ptr [rbp + 336], r14
.Lx40_0:
                        mov              rax, qword ptr [rbp + 336]
                        cmp              rax, r15
                                                                                        jge   n7_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx40_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx40_1
                        mov              qword ptr [rbp + 320], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n7_disjunction_as
.Lx40_1:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx40_0
n11_scan_upto_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx40_0
.Lx40_2:
                        .quad            .Lx40_2_s
.Lx40_2_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n7_disjunction_as
n12_lit_integer_β:
                                                                                        jmp   n7_disjunction_af
.Lx41_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 256]
                        call             proc_syms_dcα
                                                                                        jmp   .Lx43_2
.Lx43_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n7_disjunction_β
                                                                                        jmp   n14_call_builtin_icon_α
n13_call_proc_staged_β:
                                                                                        jmp   n7_disjunction_β
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "syms"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn45:               .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn45]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n7_disjunction_β
                                                                                        jmp   n15_disjunction_α
n14_call_builtin_icon_β:
                                                                                        jmp   n7_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0
                                                                                        jmp   n16_lit_integer_α
n15_disjunction_as:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        jne   .Lx47_0
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n5_var_α
.Lx47_0:
                        cmp              eax, 1
                                                                                        jne   .Lx47_1
                                                                                        jmp   n5_var_α
.Lx47_1:
                                                                                        jmp   n5_var_α
n15_disjunction_β:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        je    n15_disjunction_af
                                                                                        jmp   n15_disjunction_af
n15_disjunction_af:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 1
                                                                                        je    n17_goto_α
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n18_scan_move_α
n16_lit_integer_β:
                                                                                        jmp   n15_disjunction_af
.Lx48_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_goto_α:
                                                                                        jmp   n19_scan_α
n17_goto_β:
                                                                                        jmp   n19_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx51_239
                        add              rsp, 16
                                                                                        jmp   n15_disjunction_af
.Lx51_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx51_240
                        add              rsp, 16
                                                                                        jmp   n15_disjunction_af
.Lx51_240:
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n15_disjunction_as
n18_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_α:
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n4_var_α
n19_scan_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_β:
                                                                                        jmp   proc_alts_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 536]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_dcα:
                        pop              r11
                        sub              rsp, 576
                        mov              qword ptr [rsp + 568], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 528], r11
                        lea              rax, [rip + .Lx54_2]
                        mov              qword ptr [rbp + 536], rax
                        lea              rax, [rip + .Lx54_3]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 512
                        mov              edx, 528
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_alts_α_body
.Lx54_2:
                        mov              rdx, qword ptr [rsp + -576]
                        mov              rcx, rsp
                        add              rcx, -560
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx54_3:
                        mov              rdi, qword ptr [rsp + -576]
                        mov              rsi, rsp
                        add              rsi, -560
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_comment_α
proc_comment_α:
                        .global          proc_comment_α
                        .global          proc_comment_β
                        .global          proc_comment_γ
                        .global          proc_comment_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_comment_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n55_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n56_var_ref_α
n55_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx64_0
                                                                                        jmp   proc_comment_ω
.Lx64_0:
                                                                                        jmp   proc_comment_ω
n55_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_comment_ω
n55_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_comment_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n57_lit_integer_α
n56_var_ref_β:
                                                                                        jmp   n55_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n58_subscript_α
.Lx67_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n55_disjunction_af
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n59_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_deref_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n55_disjunction_af
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n61_binop_test_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "#"
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_test_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n55_disjunction_af
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n62_return_α
#-----------------------------------------------------------------------------------------------------------------------
n62_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_comment_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_β:
                                                                                        jmp   proc_comment_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 168]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_dcα:
                        pop              r11
                        sub              rsp, 208
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 160], r11
                        lea              rax, [rip + .Lx73_2]
                        mov              qword ptr [rbp + 168], rax
                        lea              rax, [rip + .Lx73_3]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 160
                        mov              edx, 160
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_comment_α_body
.Lx73_2:
                        mov              rdx, qword ptr [rsp + -208]
                        mov              rcx, rsp
                        add              rcx, -192
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx73_3:
                        mov              rdi, qword ptr [rsp + -208]
                        mov              rsi, rsp
                        add              rsi, -192
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_define_α
proc_define_α:
                        .global          proc_define_α
                        .global          proc_define_β
                        .global          proc_define_γ
                        .global          proc_define_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_define_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n75_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n75_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n78_scan_match_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n78_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00002_239
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
.Lx00002_239:
                        mov              rdi, qword ptr [rip + .Lx00002_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00002_240
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
.Lx00002_240:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n79_scan_tab_α
.Lx00002_0:
                        .quad            .Lx00002_0_s
.Lx00002_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n79_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 264]
                        cmp              rax, 1
                                                                                        jge   .Lx00003_0
                        add              rax, r15
                        add              rax, 1
.Lx00003_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00003_239
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
.Lx00003_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00003_240
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
.Lx00003_240:
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
                                                                                        jmp   n80_lit_string_α
n79_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n81_scan_find_α
.Lx00004_0:
                        .quad            .Lx00004_0_s
.Lx00004_0_s:
                        .string          ">::="
#-----------------------------------------------------------------------------------------------------------------------
n81_scan_find_α:
                        mov              qword ptr [rbp + 192], r14
.Lx00005_0:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rcx, r15
                        sub              rcx, 4
                        cmp              rax, rcx
                                                                                        jg    n93_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 62
                                                                                        jne   .Lx00005_1
                        mov              rcx, rax
                        add              rcx, 1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 58
                                                                                        jne   .Lx00005_1
                        mov              rcx, rax
                        add              rcx, 2
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 58
                                                                                        jne   .Lx00005_1
                        mov              rcx, rax
                        add              rcx, 3
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 61
                                                                                        jne   .Lx00005_1
                        mov              qword ptr [rbp + 176], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n82_scan_tab_α
.Lx00005_1:
                        inc              qword ptr [rbp + 192]
                                                                                        jmp   .Lx00005_0
n81_scan_find_β:
                        inc              qword ptr [rbp + 192]
                                                                                        jmp   .Lx00005_0
#-----------------------------------------------------------------------------------------------------------------------
n82_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 184]
                        cmp              rax, 1
                                                                                        jge   .Lx00006_0
                        add              rax, r15
                        add              rax, 1
.Lx00006_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00006_239
                        add              rsp, 16
                                                                                        jmp   n81_scan_find_β
.Lx00006_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00006_240
                        add              rsp, 16
                                                                                        jmp   n81_scan_find_β
.Lx00006_240:
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
                                                                                        jmp   n83_conjunction_α
n82_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n81_scan_find_β
#-----------------------------------------------------------------------------------------------------------------------
n83_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n84_subscript_α
n83_conjunction_β:
                                                                                        jmp   n93_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n81_scan_find_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n86_scan_move_α
.Lx00007_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n86_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 4
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00008_239
                        add              rsp, 16
                                                                                        jmp   n87_lit_integer_α
.Lx00008_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00008_240
                        add              rsp, 16
                                                                                        jmp   n87_lit_integer_α
.Lx00008_240:
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
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n87_lit_integer_α
n86_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n88_scan_tab_α
.Lx00009_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n88_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00010_0
                        add              rax, r15
                        add              rax, 1
.Lx00010_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00010_239
                        add              rsp, 16
                                                                                        jmp   n81_scan_find_β
.Lx00010_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00010_240
                        add              rsp, 16
                                                                                        jmp   n81_scan_find_β
.Lx00010_240:
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
                                                                                        jmp   n89_call_proc_staged_α
n88_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n81_scan_find_β
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 400]
                        call             proc_alts_dcα
                                                                                        jmp   .Lx00011_2
.Lx00011_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n81_scan_find_β
                                                                                        jmp   n90_conjunction_α
n89_call_proc_staged_β:
                                                                                        jmp   n81_scan_find_β
.Lx00011_0:
                        .quad            .Lx00011_0_s
.Lx00011_0_s:
                        .string          "alts"
#-----------------------------------------------------------------------------------------------------------------------
n90_conjunction_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n91_assign_var_α
n90_conjunction_β:
                                                                                        jmp   n81_scan_find_β
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_var_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n93_scan_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n92_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n92_scan_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   n94_return_α
n92_scan_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_scan_α:
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   proc_define_ω
n93_scan_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_define_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_define_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_define_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_define_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 520]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_define_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_define_dcα:
                        pop              r11
                        sub              rsp, 560
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 512], r11
                        lea              rax, [rip + .Lx00012_2]
                        mov              qword ptr [rbp + 520], rax
                        lea              rax, [rip + .Lx00012_3]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 512
                        mov              edx, 512
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_define_α_body
.Lx00012_2:
                        mov              rdx, qword ptr [rsp + -560]
                        mov              rcx, rsp
                        add              rcx, -544
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00012_3:
                        mov              rdi, qword ptr [rsp + -560]
                        mov              rsi, rsp
                        add              rsi, -544
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_defnon_α
proc_defnon_α:
                        .global          proc_defnon_α
                        .global          proc_defnon_β
                        .global          proc_defnon_γ
                        .global          proc_defnon_ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_defnon_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00013_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00014_var_α
n00013_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00015_0
                                                                                        jmp   proc_defnon_ω
.Lx00015_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00015_1
                                                                                        jmp   proc_defnon_ω
.Lx00015_1:
                                                                                        jmp   proc_defnon_ω
n00013_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_defnon_ω
                                                                                        jmp   proc_defnon_ω
n00013_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00016_var_α
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00017_scan_enter_α
n00014_var_β:
                                                                                        jmp   n00013_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00016_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00018_call_α
n00016_var_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
n00017_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00019_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00018_call_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn160:              .string          "nonterm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_defnon_ω
                                                                                        jmp   n00020_return_α
n00018_call_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
n00019_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00022_scan_match_α
.Lx00021_0:
                        .quad            .Lx00021_0_s
.Lx00021_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n00020_return_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_defnon_γ
#-----------------------------------------------------------------------------------------------------------------------
n00022_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00023_239
                        add              rsp, 16
                                                                                        jmp   n00024_scan_α
.Lx00023_239:
                        mov              rdi, qword ptr [rip + .Lx00023_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00023_240
                        add              rsp, 16
                                                                                        jmp   n00024_scan_α
.Lx00023_240:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00025_scan_tab_α
.Lx00023_0:
                        .quad            .Lx00023_0_s
.Lx00023_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n00025_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 456]
                        cmp              rax, 1
                                                                                        jge   .Lx00026_0
                        add              rax, r15
                        add              rax, 1
.Lx00026_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00026_239
                        add              rsp, 16
                                                                                        jmp   n00024_scan_α
.Lx00026_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00026_240
                        add              rsp, 16
                                                                                        jmp   n00024_scan_α
.Lx00026_240:
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00027_lit_integer_α
n00025_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00024_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00024_scan_α:
                        lea              rdi, [rbp + 144]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   n00013_disjunction_af
n00024_scan_β:
                                                                                        jmp   n00013_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx00028_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00029_scan_tab_α
.Lx00028_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00029_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, -1
                        cmp              rax, 1
                                                                                        jge   .Lx00030_0
                        add              rax, r15
                        add              rax, 1
.Lx00030_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00030_239
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
.Lx00030_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00030_240
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
.Lx00030_240:
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00031_call_builtin_icon_α
n00029_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00031_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn173:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n00025_scan_tab_β
                                                                                        jmp   n00032_assign_α
n00031_call_builtin_icon_β:
                                                                                        jmp   n00025_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00033_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00033_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx00034_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00035_scan_match_α
.Lx00034_0:
                        .quad            .Lx00034_0_s
.Lx00034_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n00035_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00036_239
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
.Lx00036_239:
                        mov              rdi, qword ptr [rip + .Lx00036_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00036_240
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
.Lx00036_240:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00037_scan_tab_α
.Lx00036_0:
                        .quad            .Lx00036_0_s
.Lx00036_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n00037_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 264]
                        cmp              rax, 1
                                                                                        jge   .Lx00038_0
                        add              rax, r15
                        add              rax, 1
.Lx00038_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00038_239
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
.Lx00038_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00038_240
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
.Lx00038_240:
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
                                                                                        jmp   n00039_conjunction_α
n00037_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00025_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00039_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00040_scan_α
n00039_conjunction_β:
                                                                                        jmp   n00024_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_scan_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 144]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   n00041_var_α
n00040_scan_β:
                                                                                        jmp   n00013_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00042_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_call_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn186:              .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_defnon_ω
                                                                                        jmp   n00043_return_α
n00042_call_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
n00043_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_defnon_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 600]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_dcα:
                        pop              r11
                        sub              rsp, 640
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 592], r11
                        lea              rax, [rip + .Lx00044_2]
                        mov              qword ptr [rbp + 600], rax
                        lea              rax, [rip + .Lx00044_3]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 576
                        mov              edx, 592
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_defnon_α_body
.Lx00044_2:
                        mov              rdx, qword ptr [rsp + -640]
                        mov              rcx, rsp
                        add              rcx, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00044_3:
                        mov              rdi, qword ptr [rsp + -640]
                        mov              rsi, rsp
                        add              rsi, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_error_α
proc_error_α:
                        .global          proc_error_α
                        .global          proc_error_β
                        .global          proc_error_γ
                        .global          proc_error_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 128
                        call             rt_jmp_frame_lexprep2@PLT
proc_error_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx00046_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00047_var_α
.Lx00046_0:
                        .quad            .Lx00046_0_s
.Lx00046_0_s:
                        .string          "*** erroneous line:  "
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00048_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn197:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n00049_return_α
                                                                                        jmp   n00049_return_α
n00048_call_builtin_icon_β:
                                                                                        jmp   n00049_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_error_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_error_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_error_β:
                                                                                        jmp   proc_error_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_error_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 136]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_error_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_error_dcα:
                        pop              r11
                        sub              rsp, 176
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 128], r11
                        lea              rax, [rip + .Lx00050_2]
                        mov              qword ptr [rbp + 136], rax
                        lea              rax, [rip + .Lx00050_3]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 128
                        mov              edx, 128
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_error_α_body
.Lx00050_2:
                        mov              rdx, qword ptr [rsp + -176]
                        mov              rcx, rsp
                        add              rcx, -160
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00050_3:
                        mov              rdi, qword ptr [rsp + -176]
                        mov              rsi, rsp
                        add              rsi, -160
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gener_α
proc_gener_α:
                        .global          proc_gener_α
                        .global          proc_gener_β
                        .global          proc_gener_γ
                        .global          proc_gener_ω
                        sub              rsp, 1792
                        mov              [rsp + 1768], rcx
                        mov              [rsp + 1776], rdx
                        mov              [rsp + 1784], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1712
                        mov              edx, 1760
                        call             rt_jmp_frame_lexprep2@PLT
proc_gener_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00051_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n00052_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_call_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn272:              .string          "nonterm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                                                                                        jmp   n00054_make_list_α
n00052_call_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00055_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_make_list_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n00056_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn278:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00057_call_builtin_icon_α
                                                                                        jmp   n00058_assign_α
n00055_call_builtin_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn280:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 48]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_gener_ω
                                                                                        jmp   proc_gener_ω
n00057_call_builtin_icon_β:
                                                                                        jmp   proc_gener_ω
#-----------------------------------------------------------------------------------------------------------------------
n00056_assign_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00059_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_disjunction_α:
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], 0
                        mov              dword ptr [rbp + 1328], 0
                                                                                        jmp   n00060_var_α
n00059_disjunction_as:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        jne   .Lx00061_0
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00062_var_α
.Lx00061_0:
                                                                                        jmp   n00062_var_α
n00059_disjunction_β:
                        mov              eax, dword ptr [rbp + 1328]
                                                                                        jmp   n00062_var_α
n00059_disjunction_af:
                        add              dword ptr [rbp + 1328], 1
                        mov              eax, dword ptr [rbp + 1328]
                                                                                        jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00063_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00060_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n00064_unop_test_α
n00060_var_β:
                                                                                        jmp   n00059_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00065_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn289:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n00062_var_α
                                                                                        jmp   n00059_disjunction_as
n00065_call_builtin_icon_β:
                                                                                        jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn291:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                                                                                        jmp   n00066_lit_string_α
n00063_call_builtin_icon_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_unop_test_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 99
                                                                                        je    n00059_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00059_disjunction_af
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00067_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx00068_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00069_call_builtin_α
.Lx00068_0:
                        .quad            .Lx00068_0_s
.Lx00068_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00067_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00070_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00062_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00071_var_α
n00067_keyword_icon_β:
                                                                                        jmp   n00062_var_α
.Lx00070_0:
                        .quad            .Lx00070_0_s
.Lx00070_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00069_call_builtin_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn296:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n00072_lit_string_α
                                                                                        jmp   n00073_var_α
n00069_call_builtin_β:
                                                                                        jmp   n00072_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00074_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00075_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00072_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx00076_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00077_call_builtin_α
.Lx00076_0:
                        .quad            .Lx00076_0_s
.Lx00076_0_s:
                        .string          "charset"
#-----------------------------------------------------------------------------------------------------------------------
n00074_call_proc_staged_α:
                        lea              rsi, [rbp + 1504]
                        call             proc_symimage_dcα
                                                                                        jmp   .Lx00078_2
.Lx00078_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n00062_var_α
                                                                                        jmp   n00079_var_α
n00074_call_proc_staged_β:
                                                                                        jmp   n00062_var_α
.Lx00078_0:
                        .quad            .Lx00078_0_s
.Lx00078_0_s:
                        .string          "symimage"
#-----------------------------------------------------------------------------------------------------------------------
n00075_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn305:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                                                                                        jmp   n00080_assign_α
n00075_call_builtin_icon_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_builtin_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn307:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n00081_lit_string_α
                                                                                        jmp   n00082_var_α
n00077_call_builtin_β:
                                                                                        jmp   n00081_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n00083_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00084_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00085_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx00086_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00087_call_builtin_α
.Lx00086_0:
                        .quad            .Lx00086_0_s
.Lx00086_0_s:
                        .string          "nonterm"
#-----------------------------------------------------------------------------------------------------------------------
n00083_call_proc_staged_α:
                        lea              rsi, [rbp + 1568]
                        call             proc_listimage_dcα
                                                                                        jmp   .Lx00088_2
.Lx00088_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n00062_var_α
                                                                                        jmp   n00065_call_builtin_icon_α
n00083_call_proc_staged_β:
                                                                                        jmp   n00062_var_α
.Lx00088_0:
                        .quad            .Lx00088_0_s
.Lx00088_0_s:
                        .string          "listimage"
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00089_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00090_0]
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n00091_random_α
.Lx00090_0:
                        .quad            .Lx00090_0_s
.Lx00090_0_s:
                        .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
n00087_call_builtin_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn320:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rbp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                                                                                        jmp   n00092_disjunction_α
n00087_call_builtin_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00053_var_α
n00089_conjunction_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_random_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00093_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n00094_var_ref_α
n00092_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx00095_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00096_assign_α
.Lx00095_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00095_1
                                                                                        jmp   n00096_assign_α
.Lx00095_1:
                                                                                        jmp   n00096_assign_α
n00092_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n00092_disjunction_af
                                                                                        jmp   n00092_disjunction_af
n00092_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n00097_keyword_icon_α
                                                                                        jmp   n00098_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_deref_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00099_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00098_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00100_var_α
n00094_var_ref_β:
                                                                                        jmp   n00092_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00097_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00101_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00057_call_builtin_icon_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00102_lit_string_α
n00097_keyword_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
.Lx00101_0:
                        .quad            .Lx00101_0_s
.Lx00101_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00103_binop_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00092_disjunction_as
n00103_binop_β:
                                                                                        jmp   n00092_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00104_conjunction_α:
                                                                                        jmp   n00092_disjunction_as
n00104_conjunction_β:
                                                                                        jmp   n00092_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00099_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn333:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                                                                                        jmp   n00105_assign_α
n00099_call_builtin_icon_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n00106_var_α
n00098_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx00107_0
                                                                                        jmp   n00108_conjunction_α
.Lx00107_0:
                                                                                        jmp   n00108_conjunction_α
n00098_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n00053_var_α
n00098_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00109_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx00110_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00111_var_α
.Lx00110_0:
                        .quad            .Lx00110_0_s
.Lx00110_0_s:
                        .string          "*** undefined nonterminal:  <"
#-----------------------------------------------------------------------------------------------------------------------
n00105_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00084_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_conjunction_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00112_assign_α
n00108_conjunction_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00113_unop_α
n00106_var_β:
                                                                                        jmp   n00098_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00114_conjunction_α:
                                                                                        jmp   n00098_disjunction_as
n00114_conjunction_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00115_0]
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00092_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00116_subscript_α
.Lx00115_0:
                        .quad            .Lx00115_0_s
.Lx00115_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n00111_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00117_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00112_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00084_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_unop_α:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_subscript_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00092_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00119_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00120_0]
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00057_call_builtin_icon_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00121_lit_string_α
.Lx00120_0:
                        .quad            .Lx00120_0_s
.Lx00120_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n00122_goto_α:
                                                                                        jmp   n00057_call_builtin_icon_α
n00122_goto_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00123_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00119_deref_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00092_disjunction_af
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00124_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx00125_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00126_call_builtin_icon_α
.Lx00125_0:
                        .quad            .Lx00125_0_s
.Lx00125_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00123_unop_test_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 99
                                                                                        je    n00098_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00098_disjunction_af
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00127_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_unop_test_α:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 99
                                                                                        je    n00092_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00092_disjunction_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00128_random_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn358:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rbp + 736]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n00057_call_builtin_icon_α
                                                                                        jmp   n00057_call_builtin_icon_α
n00126_call_builtin_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_binop_test_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 100
                                                                                        je    .Lx00129_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 100
                                                                                        je    .Lx00129_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx00129_2
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx00129_2
.Lx00129_1:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jle   n00098_disjunction_af
                        mov              rcx, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rcx
                        mov              rcx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rcx
                                                                                        jmp   n00130_keyword_icon_α
.Lx00129_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              r8d, 7
                        lea              r9, [rbp + 432]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00129_1
                        cmp              eax, 1
                                                                                        je    n00098_disjunction_af
                                                                                        jmp   n00130_keyword_icon_α
.Lx00129_2:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00098_disjunction_af
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00130_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00128_random_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n00092_disjunction_af
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00131_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00130_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00132_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00057_call_builtin_icon_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00133_lit_string_α
n00130_keyword_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
.Lx00132_0:
                        .quad            .Lx00132_0_s
.Lx00132_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00131_deref_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00092_disjunction_af
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx00135_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00136_call_builtin_icon_α
.Lx00135_0:
                        .quad            .Lx00135_0_s
.Lx00135_0_s:
                        .string          "*** excessive symbols remaining"
#-----------------------------------------------------------------------------------------------------------------------
n00134_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00103_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn367:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n00057_call_builtin_icon_α
                                                                                        jmp   n00057_call_builtin_icon_α
n00136_call_builtin_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00137_goto_α:
                                                                                        jmp   n00057_call_builtin_icon_α
n00137_goto_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_β:
                                                                                        jmp   proc_gener_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1768]
                        lea              rsp, [rbp + 1792]
                        mov              rbp, [rbp + 1784]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_ω:
                        mov              rax, [rbp + 1776]
                        lea              rsp, [rbp + 1792]
                        mov              rbp, [rbp + 1784]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_dcα:
                        pop              r11
                        sub              rsp, 1808
                        mov              qword ptr [rsp + 1800], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1760], r11
                        lea              rax, [rip + .Lx00138_2]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rax, [rip + .Lx00138_3]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1712
                        mov              edx, 1760
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gener_α_body
.Lx00138_2:
                        mov              rdx, qword ptr [rsp + -1808]
                        mov              rcx, rsp
                        add              rcx, -1792
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00138_3:
                        mov              rdi, qword ptr [rsp + -1808]
                        mov              rsi, rsp
                        add              rsi, -1792
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_generate_α
proc_generate_α:
                        .global          proc_generate_α
                        .global          proc_generate_β
                        .global          proc_generate_γ
                        .global          proc_generate_ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_generate_α_body:
                        mov              qword ptr [rbp + 640], 0
#-----------------------------------------------------------------------------------------------------------------------
n00139_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00140_var_α
n00139_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00141_0
                                                                                        jmp   proc_generate_ω
.Lx00141_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00141_1
                                                                                        jmp   proc_generate_ω
.Lx00141_1:
                                                                                        jmp   proc_generate_ω
n00139_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_generate_ω
                                                                                        jmp   proc_generate_ω
n00139_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    proc_generate_ω
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00140_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00142_scan_enter_α
n00140_var_β:
                                                                                        jmp   n00139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00143_conjunction_α:
                                                                                        jmp   n00139_disjunction_as
n00143_conjunction_β:
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00142_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx00145_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00146_scan_match_α
.Lx00145_0:
                        .quad            .Lx00145_0_s
.Lx00145_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00146_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00147_239
                        add              rsp, 16
                                                                                        jmp   n00148_scan_α
.Lx00147_239:
                        mov              rdi, qword ptr [rip + .Lx00147_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00147_240
                        add              rsp, 16
                                                                                        jmp   n00148_scan_α
.Lx00147_240:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00149_scan_tab_α
.Lx00147_0:
                        .quad            .Lx00147_0_s
.Lx00147_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00149_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 792]
                        cmp              rax, 1
                                                                                        jge   .Lx00150_0
                        add              rax, r15
                        add              rax, 1
.Lx00150_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00150_239
                        add              rsp, 16
                                                                                        jmp   n00148_scan_α
.Lx00150_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00150_240
                        add              rsp, 16
                                                                                        jmp   n00148_scan_α
.Lx00150_240:
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
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00151_lit_integer_α
n00149_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00148_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00148_scan_α:
                        lea              rdi, [rbp + 272]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 272]
                        mov              r14, qword ptr [rbp + 280]
                        mov              r15, qword ptr [rbp + 288]
                                                                                        jmp   n00139_disjunction_af
n00148_scan_β:
                                                                                        jmp   n00139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00151_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx00152_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00153_lit_charset_α
.Lx00152_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00153_lit_charset_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx00154_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00155_scan_upto_α
.Lx00154_0:
                        .quad            .Lx00154_0_s
.Lx00154_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_upto_α:
                        mov              qword ptr [rbp + 720], r14
.Lx00156_0:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, r15
                                                                                        jge   n00149_scan_tab_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00156_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00156_1
                        mov              qword ptr [rbp + 704], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00157_scan_tab_α
.Lx00156_1:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00156_0
n00155_scan_upto_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00156_0
.Lx00156_2:
                        .quad            .Lx00156_2_s
.Lx00156_2_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00157_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 712]
                        cmp              rax, 1
                                                                                        jge   .Lx00158_0
                        add              rax, r15
                        add              rax, 1
.Lx00158_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00158_239
                        add              rsp, 16
                                                                                        jmp   n00155_scan_upto_β
.Lx00158_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00158_240
                        add              rsp, 16
                                                                                        jmp   n00155_scan_upto_β
.Lx00158_240:
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
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00159_limit_α
n00157_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00155_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00159_limit_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 664]
                        cmp              rax, rcx
                                                                                        jge   n00149_scan_tab_β
                        inc              qword ptr [rbp + 640]
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00160_assign_α
n00159_limit_β:
                                                                                        jmp   n00157_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00160_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx00162_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00163_scan_move_α
.Lx00162_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00164_239
                        add              rsp, 16
                                                                                        jmp   n00149_scan_tab_β
.Lx00164_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00164_240
                        add              rsp, 16
                                                                                        jmp   n00149_scan_tab_β
.Lx00164_240:
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
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00165_disjunction_α
n00163_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00149_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00165_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00166_lit_integer_α
n00165_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00167_0
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00168_assign_α
.Lx00167_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00167_1
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00168_assign_α
.Lx00167_1:
                                                                                        jmp   n00168_assign_α
n00165_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00169_goto_β
                                                                                        jmp   n00165_disjunction_af
n00165_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00170_lit_integer_α
                                                                                        jmp   n00149_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00168_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00171_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00172_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00173_scan_pos_α
n00166_lit_integer_β:
                                                                                        jmp   n00165_disjunction_af
.Lx00172_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00169_goto_α:
                                                                                        jmp   n00165_disjunction_af
n00169_goto_β:
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00170_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx00174_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00175_scan_tab_α
n00170_lit_integer_β:
                                                                                        jmp   n00165_disjunction_af
.Lx00174_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00176_conjunction_α:
                                                                                        jmp   n00165_disjunction_as
n00176_conjunction_β:
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00177_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn441:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n00165_disjunction_af
                                                                                        jmp   n00165_disjunction_as
n00177_call_builtin_icon_β:
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00171_conjunction_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00178_scan_α
n00171_conjunction_β:
                                                                                        jmp   n00148_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00179_0
                        add              rax, r15
                        add              rax, 1
.Lx00179_0:
                        cmp              rax, 1
                                                                                        jl    n00165_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00165_disjunction_af
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00165_disjunction_af
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00181_0
                        add              rax, r15
                        add              rax, 1
.Lx00181_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00181_239
                        add              rsp, 16
                                                                                        jmp   n00165_disjunction_af
.Lx00181_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00181_240
                        add              rsp, 16
                                                                                        jmp   n00165_disjunction_af
.Lx00181_240:
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n00177_call_builtin_icon_α
n00175_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00178_scan_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 272]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 272]
                        mov              r14, qword ptr [rbp + 280]
                        mov              r15, qword ptr [rbp + 288]
                                                                                        jmp   n00182_lit_integer_α
n00178_scan_β:
                                                                                        jmp   n00139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00183_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00176_conjunction_α
.Lx00183_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00182_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx00184_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00185_var_α
.Lx00184_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00186_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_to_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx00187_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jg    n00188_return_α
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00189_bound_α
n00186_to_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx00187_0
#-----------------------------------------------------------------------------------------------------------------------
n00188_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_generate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00189_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n00190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00190_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00191_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00191_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        call             proc_gener_dcα
                                                                                        jmp   .Lx00192_2
.Lx00192_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n00193_unmark_α
                                                                                        jmp   n00193_unmark_α
n00191_call_proc_staged_β:
                                                                                        jmp   n00193_unmark_α
.Lx00192_0:
                        .quad            .Lx00192_0_s
.Lx00192_0_s:
                        .string          "gener"
#-----------------------------------------------------------------------------------------------------------------------
n00193_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n00186_to_β
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_β:
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00194_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00194_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_generate_α_body
.Lx00194_2:
                        mov              rdx, qword ptr [rsp + -928]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00194_3:
                        mov              rdi, qword ptr [rsp + -928]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_getrhs_α
proc_getrhs_α:
                        .global          proc_getrhs_α
                        .global          proc_getrhs_β
                        .global          proc_getrhs_γ
                        .global          proc_getrhs_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_getrhs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00195_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx00196_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00197_assign_α
.Lx00196_0:
                        .quad            .Lx00196_0_s
.Lx00196_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00197_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00199_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00200_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00202_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_iterate_α:
                        mov              qword ptr [rbp + 224], 0
.Lx00203_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 224]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              rax, 99
                                                                                        je    n00201_var_α
                                                                                        jmp   n00204_call_proc_staged_α
n00200_iterate_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx00203_0
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00205_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00206_lit_integer_α
.Lx00205_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00204_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        call             proc_listimage_dcα
                                                                                        jmp   .Lx00207_2
.Lx00207_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00200_iterate_β
                                                                                        jmp   n00208_lit_string_α
n00204_call_proc_staged_β:
                                                                                        jmp   n00200_iterate_β
.Lx00207_0:
                        .quad            .Lx00207_0_s
.Lx00207_0_s:
                        .string          "listimage"
#-----------------------------------------------------------------------------------------------------------------------
n00206_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx00209_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00210_subscript_α
.Lx00209_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00208_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx00211_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00212_binop_α
.Lx00211_0:
                        .quad            .Lx00211_0_s
.Lx00211_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n00210_subscript_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        mov              r8, qword ptr [rbp + 80]
                        mov              r9, qword ptr [rbp + 88]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    proc_getrhs_ω
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00213_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00212_binop_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00214_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00213_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getrhs_γ
#-----------------------------------------------------------------------------------------------------------------------
n00214_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n00215_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00215_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00200_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_β:
                                                                                        jmp   proc_getrhs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 312]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 304], r11
                        lea              rax, [rip + .Lx00216_2]
                        mov              qword ptr [rbp + 312], rax
                        lea              rax, [rip + .Lx00216_3]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 288
                        mov              edx, 304
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_getrhs_α_body
.Lx00216_2:
                        mov              rdx, qword ptr [rsp + -352]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00216_3:
                        mov              rdi, qword ptr [rsp + -352]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_grammar_α
proc_grammar_α:
                        .global          proc_grammar_α
                        .global          proc_grammar_β
                        .global          proc_grammar_γ
                        .global          proc_grammar_ω
                        sub              rsp, 1456
                        mov              [rsp + 1432], rcx
                        mov              [rsp + 1440], rdx
                        mov              [rsp + 1448], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1376
                        mov              edx, 1424
                        call             rt_jmp_frame_lexprep2@PLT
proc_grammar_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00217_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00218_var_α
n00217_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00219_0
                                                                                        jmp   proc_grammar_ω
.Lx00219_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00219_1
                                                                                        jmp   proc_grammar_ω
.Lx00219_1:
                                                                                        jmp   proc_grammar_ω
n00217_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_grammar_ω
                                                                                        jmp   proc_grammar_ω
n00217_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    proc_grammar_ω
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00220_scan_enter_α
n00218_var_β:
                                                                                        jmp   n00217_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00221_conjunction_α:
                                                                                        jmp   n00217_disjunction_as
n00221_conjunction_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
n00220_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx00223_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00224_scan_find_α
.Lx00223_0:
                        .quad            .Lx00223_0_s
.Lx00223_0_s:
                        .string          "->"
#-----------------------------------------------------------------------------------------------------------------------
n00224_scan_find_α:
                        mov              qword ptr [rbp + 1328], r14
.Lx00225_0:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rcx, r15
                        sub              rcx, 2
                        cmp              rax, rcx
                                                                                        jg    n00226_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 45
                                                                                        jne   .Lx00225_1
                        mov              rcx, rax
                        add              rcx, 1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 62
                                                                                        jne   .Lx00225_1
                        mov              qword ptr [rbp + 1312], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00227_scan_tab_α
.Lx00225_1:
                        inc              qword ptr [rbp + 1328]
                                                                                        jmp   .Lx00225_0
n00224_scan_find_β:
                        inc              qword ptr [rbp + 1328]
                                                                                        jmp   .Lx00225_0
#-----------------------------------------------------------------------------------------------------------------------
n00227_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1320]
                        cmp              rax, 1
                                                                                        jge   .Lx00228_0
                        add              rax, r15
                        add              rax, 1
.Lx00228_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00228_239
                        add              rsp, 16
                                                                                        jmp   n00224_scan_find_β
.Lx00228_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00228_240
                        add              rsp, 16
                                                                                        jmp   n00224_scan_find_β
.Lx00228_240:
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
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n00229_assign_α
n00227_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00224_scan_find_β
#-----------------------------------------------------------------------------------------------------------------------
n00229_assign_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx00231_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00232_scan_move_α
.Lx00231_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00232_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00233_239
                        add              rsp, 16
                                                                                        jmp   n00226_scan_α
.Lx00233_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00233_240
                        add              rsp, 16
                                                                                        jmp   n00226_scan_α
.Lx00233_240:
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
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n00234_lit_integer_α
n00232_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00226_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00234_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n00236_scan_tab_α
.Lx00235_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00226_scan_α:
                        lea              rdi, [rbp + 656]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 656]
                        mov              r14, qword ptr [rbp + 664]
                        mov              r15, qword ptr [rbp + 672]
                                                                                        jmp   n00217_disjunction_af
n00226_scan_β:
                                                                                        jmp   n00217_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00236_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00237_0
                        add              rax, r15
                        add              rax, 1
.Lx00237_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00237_239
                        add              rsp, 16
                                                                                        jmp   n00226_scan_α
.Lx00237_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00237_240
                        add              rsp, 16
                                                                                        jmp   n00226_scan_α
.Lx00237_240:
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
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00238_assign_α
n00236_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00226_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n00239_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00239_disjunction_α:
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0
                                                                                        jmp   n00240_var_α
n00239_disjunction_as:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        jne   .Lx00241_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00242_assign_α
.Lx00241_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00241_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00242_assign_α
.Lx00241_1:
                                                                                        jmp   n00242_assign_α
n00239_disjunction_β:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        je    n00226_scan_α
                                                                                        jmp   n00243_disjunction_β
n00239_disjunction_af:
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 1
                                                                                        je    n00243_disjunction_α
                                                                                        jmp   n00226_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00242_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00244_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00245_unop_α
n00240_var_β:
                                                                                        jmp   n00239_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00243_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n00246_var_α
n00243_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx00247_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00239_disjunction_as
.Lx00247_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00247_1
                                                                                        jmp   n00239_disjunction_as
.Lx00247_1:
                                                                                        jmp   n00239_disjunction_as
n00243_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    n00243_disjunction_af
                                                                                        jmp   n00243_disjunction_af
n00243_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    n00248_keyword_icon_α
                                                                                        jmp   n00226_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00250_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00226_scan_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00239_disjunction_as
n00249_keyword_icon_β:
                                                                                        jmp   n00226_scan_α
.Lx00250_0:
                        .quad            .Lx00250_0_s
.Lx00250_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n00244_conjunction_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00251_scan_α
n00244_conjunction_β:
                                                                                        jmp   n00226_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_unop_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00252_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00253_lit_string_α
n00246_var_β:
                                                                                        jmp   n00243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00248_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00254_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_grammar_ω
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00255_lit_string_α
n00248_keyword_icon_β:
                                                                                        jmp   proc_grammar_ω
.Lx00254_0:
                        .quad            .Lx00254_0_s
.Lx00254_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn599:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn599]
                        lea              rsi, [rbp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n00243_disjunction_af
                                                                                        jmp   n00243_disjunction_as
n00256_call_builtin_icon_β:
                                                                                        jmp   n00243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00257_conjunction_α:
                                                                                        jmp   n00243_disjunction_as
n00257_conjunction_β:
                                                                                        jmp   n00243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00251_scan_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 656]
                        mov              r14, qword ptr [rbp + 664]
                        mov              r15, qword ptr [rbp + 672]
                                                                                        jmp   n00258_disjunction_α
n00251_scan_β:
                                                                                        jmp   n00217_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00252_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx00259_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00260_binop_test_α
.Lx00259_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00253_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx00261_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00256_call_builtin_icon_α
.Lx00261_0:
                        .quad            .Lx00261_0_s
.Lx00261_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00262_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00263_var_α
.Lx00262_0:
                        .quad            .Lx00262_0_s
.Lx00262_0_s:
                        .string          "*** cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00258_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n00264_var_α
n00258_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx00265_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00266_var_α
.Lx00265_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00265_1
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00266_var_α
.Lx00265_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00265_2
                                                                                        jmp   n00266_var_α
.Lx00265_2:
                                                                                        jmp   n00266_var_α
n00258_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n00258_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00267_goto_β
                                                                                        jmp   n00258_disjunction_af
n00258_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n00268_var_ref_α
                        cmp              eax, 2
                                                                                        je    proc_grammar_ω
                                                                                        jmp   n00266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00260_binop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 100
                                                                                        je    .Lx00269_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 100
                                                                                        je    .Lx00269_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx00269_2
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx00269_2
.Lx00269_1:
                        mov              rax, qword ptr [rbp + 840]
                        mov              rcx, qword ptr [rbp + 872]
                        cmp              rax, rcx
                                                                                        jne   n00239_disjunction_af
                        mov              rcx, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rcx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rcx
                                                                                        jmp   n00249_keyword_icon_α
.Lx00269_0:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 9
                        lea              r9, [rbp + 816]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00269_1
                        cmp              eax, 1
                                                                                        je    n00239_disjunction_af
                                                                                        jmp   n00249_keyword_icon_α
.Lx00269_2:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00239_disjunction_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00249_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00270_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_var_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00272_unop_α
n00264_var_β:
                                                                                        jmp   n00258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00273_lit_integer_α
n00268_var_ref_β:
                                                                                        jmp   n00258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00267_goto_α:
                                                                                        jmp   n00258_disjunction_af
n00267_goto_β:
                                                                                        jmp   n00258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00274_binop_test_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 100
                                                                                        je    .Lx00275_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 100
                                                                                        je    .Lx00275_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx00275_2
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx00275_2
.Lx00275_1:
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, qword ptr [rbp + 424]
                        cmp              rax, rcx
                                                                                        jne   n00258_disjunction_af
                        mov              rcx, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rcx
                        mov              rcx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rcx
                                                                                        jmp   n00258_disjunction_as
.Lx00275_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              r8d, 9
                        lea              r9, [rbp + 368]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00275_1
                        cmp              eax, 1
                                                                                        je    n00258_disjunction_af
                                                                                        jmp   n00258_disjunction_as
.Lx00275_2:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00258_disjunction_af
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00258_disjunction_as
n00274_binop_test_β:
                                                                                        jmp   n00258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00276_conjunction_α:
                                                                                        jmp   n00258_disjunction_as
n00276_conjunction_β:
                                                                                        jmp   n00258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00270_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn621:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    proc_grammar_ω
                                                                                        jmp   proc_grammar_ω
n00270_call_builtin_icon_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00277_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n00279_var_α
n00278_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx00280_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00281_return_α
.Lx00280_0:
                                                                                        jmp   n00281_return_α
n00278_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                                                                                        jmp   n00281_return_α
n00278_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                                                                                        jmp   n00281_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00272_unop_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00282_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00273_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx00283_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00284_subscript_α
.Lx00283_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00277_call_proc_staged_α:
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 320]
                        call             proc_pwrite_dcα
                                                                                        jmp   .Lx00285_2
.Lx00285_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n00278_disjunction_α
                                                                                        jmp   n00278_disjunction_α
n00277_call_proc_staged_β:
                                                                                        jmp   n00278_disjunction_α
.Lx00285_0:
                        .quad            .Lx00285_0_s
.Lx00285_0_s:
                        .string          "pwrite"
#-----------------------------------------------------------------------------------------------------------------------
n00281_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_grammar_γ
#-----------------------------------------------------------------------------------------------------------------------
n00279_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00286_unop_α
n00279_var_β:
                                                                                        jmp   n00278_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00287_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn634:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn634]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n00281_return_α
                                                                                        jmp   n00278_disjunction_as
n00287_call_builtin_icon_β:
                                                                                        jmp   n00281_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00288_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00274_binop_test_α
.Lx00288_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00284_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00258_disjunction_af
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00289_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_unop_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00290_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00289_deref_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00258_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx00292_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00293_binop_test_α
.Lx00292_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00291_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx00294_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00295_binop_test_α
.Lx00294_0:
                        .quad            .Lx00294_0_s
.Lx00294_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00293_binop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 100
                                                                                        je    .Lx00296_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 100
                                                                                        je    .Lx00296_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx00296_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx00296_2
.Lx00296_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx
                                                                                        je    n00278_disjunction_af
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n00297_var_α
.Lx00296_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8d, 10
                        lea              r9, [rbp + 176]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00296_1
                        cmp              eax, 1
                                                                                        je    n00278_disjunction_af
                                                                                        jmp   n00297_var_α
.Lx00296_2:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00278_disjunction_af
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00297_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_binop_test_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00258_disjunction_af
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00297_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00287_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00299_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx00300_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00301_subscript_α
.Lx00300_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00301_subscript_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00258_disjunction_af
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00302_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00302_deref_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00258_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n00303_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx00304_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00305_binop_test_α
.Lx00304_0:
                        .quad            .Lx00304_0_s
.Lx00304_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00305_binop_test_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00258_disjunction_af
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00276_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1432]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_ω:
                        mov              rax, [rbp + 1440]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_dcα:
                        pop              r11
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1464], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1424], r11
                        lea              rax, [rip + .Lx00306_2]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rax, [rip + .Lx00306_3]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1376
                        mov              edx, 1424
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_grammar_α_body
.Lx00306_2:
                        mov              rdx, qword ptr [rsp + -1472]
                        mov              rcx, rsp
                        add              rcx, -1456
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00306_3:
                        mov              rdi, qword ptr [rsp + -1472]
                        mov              rsi, rsp
                        add              rsi, -1456
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_listimage_α
proc_listimage_α:
                        .global          proc_listimage_α
                        .global          proc_listimage_β
                        .global          proc_listimage_γ
                        .global          proc_listimage_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 272
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_listimage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00307_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx00308_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00309_assign_α
.Lx00308_0:
                        .quad            .Lx00308_0_s
.Lx00308_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00309_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00310_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00310_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00311_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00311_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00312_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    n00313_var_α
                                                                                        jmp   n00314_assign_α
n00311_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx00312_0
#-----------------------------------------------------------------------------------------------------------------------
n00313_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00315_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00316_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_listimage_γ
#-----------------------------------------------------------------------------------------------------------------------
n00316_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00317_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00319_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00320_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00311_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00319_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        call             proc_symimage_dcα
                                                                                        jmp   .Lx00321_2
.Lx00321_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n00320_unmark_α
                                                                                        jmp   n00322_binop_α
n00319_call_proc_staged_β:
                                                                                        jmp   n00320_unmark_α
.Lx00321_0:
                        .quad            .Lx00321_0_s
.Lx00321_0_s:
                        .string          "symimage"
#-----------------------------------------------------------------------------------------------------------------------
n00322_binop_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00323_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00320_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_β:
                                                                                        jmp   proc_listimage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 312]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 304], r11
                        lea              rax, [rip + .Lx00324_2]
                        mov              qword ptr [rbp + 312], rax
                        lea              rax, [rip + .Lx00324_3]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 272
                        mov              edx, 304
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_listimage_α_body
.Lx00324_2:
                        mov              rdx, qword ptr [rsp + -352]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00324_3:
                        mov              rdi, qword ptr [rsp + -352]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prompter_α
proc_prompter_α:
                        .global          proc_prompter_α
                        .global          proc_prompter_β
                        .global          proc_prompter_γ
                        .global          proc_prompter_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_prompter_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00325_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00326_var_ref_α
n00325_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00327_0
                                                                                        jmp   proc_prompter_ω
.Lx00327_0:
                                                                                        jmp   proc_prompter_ω
n00325_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_prompter_ω
n00325_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
n00326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00328_lit_integer_α
n00326_var_ref_β:
                                                                                        jmp   n00325_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00329_conjunction_α:
                                                                                        jmp   n00325_disjunction_as
n00329_conjunction_β:
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
n00328_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx00330_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00331_subscript_α
.Lx00330_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00331_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00325_disjunction_af
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n00332_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00332_deref_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00325_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00333_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx00334_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00335_binop_test_α
.Lx00334_0:
                        .quad            .Lx00334_0_s
.Lx00334_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n00335_binop_test_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00325_disjunction_af
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00336_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00337_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx00338_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00339_lit_integer_α
.Lx00338_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00340_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_prompter_γ
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx00341_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00342_subscript_α
.Lx00341_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00342_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        mov              r8, qword ptr [rbp + 144]
                        mov              r9, qword ptr [rbp + 152]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n00340_return_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00343_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00340_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_β:
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00344_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00344_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prompter_α_body
.Lx00344_2:
                        mov              rdx, qword ptr [rsp + -304]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00344_3:
                        mov              rdi, qword ptr [rsp + -304]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pwrite_α
proc_pwrite_α:
                        .global          proc_pwrite_α
                        .global          proc_pwrite_β
                        .global          proc_pwrite_γ
                        .global          proc_pwrite_ω
                        sub              rsp, 1728
                        mov              [rsp + 1704], rcx
                        mov              [rsp + 1712], rdx
                        mov              [rsp + 1720], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1664
                        mov              edx, 1696
                        call             rt_jmp_frame_lexprep2@PLT
proc_pwrite_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00345_disjunction_α:
                        mov              qword ptr [rbp + 1280], 0
                        mov              qword ptr [rbp + 1288], 0
                        mov              dword ptr [rbp + 1296], 0
                                                                                        jmp   n00346_var_ref_α
n00345_disjunction_as:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 0
                                                                                        jne   .Lx00347_0
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n00348_disjunction_α
.Lx00347_0:
                                                                                        jmp   n00348_disjunction_α
n00345_disjunction_β:
                        mov              eax, dword ptr [rbp + 1296]
                                                                                        jmp   n00348_disjunction_α
n00345_disjunction_af:
                        add              dword ptr [rbp + 1296], 1
                        mov              eax, dword ptr [rbp + 1296]
                                                                                        jmp   n00348_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00348_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n00349_var_α
n00348_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx00350_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_pwrite_ω
.Lx00350_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00350_1
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_pwrite_ω
.Lx00350_1:
                                                                                        jmp   proc_pwrite_ω
n00348_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    n00351_goto_β
                                                                                        jmp   n00352_disjunction_β
n00348_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n00352_disjunction_α
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
n00346_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052448
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n00353_nulltest_var_α
n00346_var_ref_β:
                                                                                        jmp   n00345_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00354_assign_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n00345_disjunction_as
n00354_assign_β:
                                                                                        jmp   n00348_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00355_unop_α
n00349_var_β:
                                                                                        jmp   n00348_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00351_goto_α:
                                                                                        jmp   n00356_var_α
n00351_goto_β:
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00352_disjunction_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   n00357_var_α
n00352_disjunction_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx00358_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00348_disjunction_as
.Lx00358_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00358_1
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00348_disjunction_as
.Lx00358_1:
                                                                                        jmp   n00348_disjunction_as
n00352_disjunction_β:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        je    n00352_disjunction_af
                                                                                        jmp   n00352_disjunction_af
n00352_disjunction_af:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1
                                                                                        je    n00359_lit_string_α
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
n00360_conjunction_α:
                                                                                        jmp   n00348_disjunction_as
n00360_conjunction_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
n00353_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 99
                                                                                        je    n00345_disjunction_af
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00345_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00345_disjunction_af
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n00361_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00355_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00362_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00356_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00363_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00364_var_α
n00357_var_β:
                                                                                        jmp   n00352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00359_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx00365_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00366_var_α
n00359_lit_string_β:
                                                                                        jmp   n00352_disjunction_af
.Lx00365_0:
                        .quad            .Lx00365_0_s
.Lx00365_0_s:
                        .string          "*** undefined nonterminal:  "
#-----------------------------------------------------------------------------------------------------------------------
n00367_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn807:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn807]
                        lea              rsi, [rbp + 880]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n00352_disjunction_af
                                                                                        jmp   n00352_disjunction_as
n00367_call_builtin_icon_β:
                                                                                        jmp   n00352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00368_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn809:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00352_disjunction_af
                                                                                        jmp   n00352_disjunction_as
n00368_call_builtin_icon_β:
                                                                                        jmp   n00352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00361_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx00369_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n00370_assign_var_α
.Lx00369_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00362_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx00371_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00372_binop_test_α
.Lx00371_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn813:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn813]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pwrite_ω
                                                                                        jmp   n00373_assign_α
n00363_call_builtin_icon_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00368_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00345_disjunction_af
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n00375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_binop_test_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 100
                                                                                        je    .Lx00376_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 100
                                                                                        je    .Lx00376_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 6
                                                                                        jne   .Lx00376_2
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx00376_2
.Lx00376_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 824]
                        cmp              rax, rcx
                                                                                        jne   n00348_disjunction_af
                        mov              rcx, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rcx
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rcx
                                                                                        jmp   n00377_var_α
.Lx00376_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 9
                        lea              r9, [rbp + 768]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00376_1
                        cmp              eax, 1
                                                                                        je    n00348_disjunction_af
                                                                                        jmp   n00377_var_α
.Lx00376_2:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00348_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00377_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00373_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n00378_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx00379_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00380_var_ref_α
.Lx00379_0:
                        .quad            .Lx00379_0_s
.Lx00379_0_s:
                        .string          "::="
#-----------------------------------------------------------------------------------------------------------------------
n00375_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx00381_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n00382_lit_string_α
.Lx00381_0:
                        .quad            .Lx00381_0_s
.Lx00381_0_s:
                        .string          "lb"
#-----------------------------------------------------------------------------------------------------------------------
n00377_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00383_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00378_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n00384_var_α
n00378_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx00385_0
                                                                                        jmp   n00386_var_α
.Lx00385_0:
                                                                                        jmp   n00386_var_α
n00378_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00386_var_α
n00378_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00386_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n00387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx00388_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n00389_lit_string_α
.Lx00388_0:
                        .quad            .Lx00388_0_s
.Lx00388_0_s:
                        .string          "rb"
#-----------------------------------------------------------------------------------------------------------------------
n00383_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx00390_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00391_call_builtin_icon_α
.Lx00390_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00386_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_var_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00393_var_α
n00384_var_β:
                                                                                        jmp   n00378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00394_conjunction_α:
                                                                                        jmp   n00378_disjunction_as
n00394_conjunction_β:
                                                                                        jmp   n00386_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00395_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx00396_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00397_lit_string_α
.Lx00396_0:
                        .quad            .Lx00396_0_s
.Lx00396_0_s:
                        .string          "vb"
#-----------------------------------------------------------------------------------------------------------------------
n00391_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn839:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn839]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n00356_var_α
                                                                                        jmp   n00398_assign_α
n00391_call_builtin_icon_β:
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx00399_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00400_var_α
.Lx00399_0:
                        .quad            .Lx00399_0_s
.Lx00399_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00401_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00395_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx00402_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00403_lit_integer_α
.Lx00402_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00397_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx00404_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n00405_lit_string_α
.Lx00404_0:
                        .quad            .Lx00404_0_s
.Lx00404_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
n00398_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00400_var_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_iterate_α:
                        mov              qword ptr [rbp + 640], 0
.Lx00407_0:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 640]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              rax, 99
                                                                                        je    n00378_disjunction_af
                                                                                        jmp   n00408_binop_test_α
n00401_iterate_β:
                        inc              qword ptr [rbp + 640]
                                                                                        jmp   .Lx00407_0
#-----------------------------------------------------------------------------------------------------------------------
n00403_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx00409_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00410_subscript_α
.Lx00409_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00405_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx00411_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n00412_lit_string_α
.Lx00411_0:
                        .quad            .Lx00411_0_s
.Lx00411_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00406_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx00413_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00414_var_α
.Lx00413_0:
                        .quad            .Lx00413_0_s
.Lx00413_0_s:
                        .string          ">::="
#-----------------------------------------------------------------------------------------------------------------------
n00408_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00401_iterate_β
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00410_subscript_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              r8, qword ptr [rbp + 1136]
                        mov              r9, qword ptr [rbp + 1144]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n00352_disjunction_af
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00416_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00412_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx00417_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00418_lit_string_α
.Lx00417_0:
                        .quad            .Lx00417_0_s
.Lx00417_0_s:
                        .string          "&lcase"
#-----------------------------------------------------------------------------------------------------------------------
n00414_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00419_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00420_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_subscript_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00352_disjunction_af
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00421_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00418_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx00422_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n00423_lit_string_α
.Lx00422_0:
                        .quad            .Lx00422_0_s
.Lx00422_0_s:
                        .string          "&ucase"
#-----------------------------------------------------------------------------------------------------------------------
n00419_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn862:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn862]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n00356_var_α
                                                                                        jmp   n00424_call_proc_staged_α
n00419_call_builtin_icon_β:
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00420_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn864:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn864]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n00356_var_α
                                                                                        jmp   n00356_var_α
n00420_call_builtin_icon_β:
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00425_goto_α:
                                                                                        jmp   n00356_var_α
n00425_goto_β:
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_deref_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00352_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00426_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx00427_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00428_make_list_α
.Lx00427_0:
                        .quad            .Lx00427_0_s
.Lx00427_0_s:
                        .string          "&digit"
#-----------------------------------------------------------------------------------------------------------------------
n00424_call_proc_staged_α:
                        lea              rsi, [rbp + 416]
                        call             proc_getrhs_dcα
                                                                                        jmp   .Lx00429_2
.Lx00429_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n00356_var_α
                                                                                        jmp   n00430_call_builtin_icon_α
n00424_call_proc_staged_β:
                                                                                        jmp   n00356_var_α
.Lx00429_0:
                        .quad            .Lx00429_0_s
.Lx00429_0_s:
                        .string          "getrhs"
#-----------------------------------------------------------------------------------------------------------------------
n00426_unop_test_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 99
                                                                                        je    n00352_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00352_disjunction_af
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00431_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00428_make_list_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 8
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n00354_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn874:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn874]
                        lea              rsi, [rbp + 208]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n00356_var_α
                                                                                        jmp   n00432_conjunction_α
n00430_call_builtin_icon_β:
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00431_call_proc_staged_α:
                        lea              rsi, [rbp + 1056]
                        call             proc_getrhs_dcα
                                                                                        jmp   .Lx00433_2
.Lx00433_2:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n00352_disjunction_af
                                                                                        jmp   n00367_call_builtin_icon_α
n00431_call_proc_staged_β:
                                                                                        jmp   n00352_disjunction_af
.Lx00433_0:
                        .quad            .Lx00433_0_s
.Lx00433_0_s:
                        .string          "getrhs"
#-----------------------------------------------------------------------------------------------------------------------
n00432_conjunction_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00356_var_α
n00432_conjunction_β:
                                                                                        jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1704]
                        lea              rsp, [rbp + 1728]
                        mov              rbp, [rbp + 1720]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_ω:
                        mov              rax, [rbp + 1712]
                        lea              rsp, [rbp + 1728]
                        mov              rbp, [rbp + 1720]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_dcα:
                        pop              r11
                        sub              rsp, 1744
                        mov              qword ptr [rsp + 1736], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1696], r11
                        lea              rax, [rip + .Lx00434_2]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rax, [rip + .Lx00434_3]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1664
                        mov              edx, 1696
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pwrite_α_body
.Lx00434_2:
                        mov              rdx, qword ptr [rsp + -1744]
                        mov              rcx, rsp
                        add              rcx, -1728
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00434_3:
                        mov              rdi, qword ptr [rsp + -1744]
                        mov              rsi, rsp
                        add              rsi, -1728
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_source_α
proc_source_α:
                        .global          proc_source_α
                        .global          proc_source_β
                        .global          proc_source_γ
                        .global          proc_source_ω
                        sub              rsp, 784
                        mov              [rsp + 760], rcx
                        mov              [rsp + 768], rdx
                        mov              [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 720
                        mov              edx, 752
                        call             rt_jmp_frame_lexprep2@PLT
proc_source_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00435_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00436_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00437_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00437_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00438_lit_string_α
n00437_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00439_0
                                                                                        jmp   n00440_scan_α
.Lx00439_0:
                                                                                        jmp   n00440_scan_α
n00437_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00441_scan_α
n00437_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00441_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00440_scan_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   n00442_return_α
n00440_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00437_disjunction_β
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
n00438_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx00443_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00444_scan_match_α
n00438_lit_string_β:
                                                                                        jmp   n00437_disjunction_af
.Lx00443_0:
                        .quad            .Lx00443_0_s
.Lx00443_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00445_conjunction_α:
                                                                                        jmp   n00437_disjunction_as
n00445_conjunction_β:
                                                                                        jmp   n00441_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00442_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_source_γ
#-----------------------------------------------------------------------------------------------------------------------
n00444_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00446_239
                        add              rsp, 16
                                                                                        jmp   n00437_disjunction_af
.Lx00446_239:
                        mov              rdi, qword ptr [rip + .Lx00446_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00446_240
                        add              rsp, 16
                                                                                        jmp   n00437_disjunction_af
.Lx00446_240:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00447_scan_tab_α
.Lx00446_0:
                        .quad            .Lx00446_0_s
.Lx00446_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00447_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 664]
                        cmp              rax, 1
                                                                                        jge   .Lx00448_0
                        add              rax, r15
                        add              rax, 1
.Lx00448_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00448_239
                        add              rsp, 16
                                                                                        jmp   n00437_disjunction_af
.Lx00448_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00448_240
                        add              rsp, 16
                                                                                        jmp   n00437_disjunction_af
.Lx00448_240:
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
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n00449_disjunction_α
n00447_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00437_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00449_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n00450_lit_integer_α
n00449_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx00451_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00452_assign_α
.Lx00451_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00451_1
                                                                                        jmp   n00452_assign_α
.Lx00451_1:
                                                                                        jmp   n00452_assign_α
n00449_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n00449_disjunction_af
                                                                                        jmp   n00449_disjunction_af
n00449_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n00453_keyword_icon_α
                                                                                        jmp   n00454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n00454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00455_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00456_scan_tab_α
n00450_lit_integer_β:
                                                                                        jmp   n00449_disjunction_af
.Lx00455_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00453_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00457_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_source_ω
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00458_lit_string_α
n00453_keyword_icon_β:
                                                                                        jmp   proc_source_ω
.Lx00457_0:
                        .quad            .Lx00457_0_s
.Lx00457_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00459_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn928:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn928]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n00449_disjunction_af
                                                                                        jmp   n00449_disjunction_as
n00459_call_builtin_icon_β:
                                                                                        jmp   n00449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00460_conjunction_α:
                                                                                        jmp   n00449_disjunction_as
n00460_conjunction_β:
                                                                                        jmp   n00449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00454_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00461_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00462_0
                        add              rax, r15
                        add              rax, 1
.Lx00462_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00462_239
                        add              rsp, 16
                                                                                        jmp   n00449_disjunction_af
.Lx00462_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00462_240
                        add              rsp, 16
                                                                                        jmp   n00449_disjunction_af
.Lx00462_240:
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00463_assign_α
n00456_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00458_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx00464_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00465_var_α
.Lx00464_0:
                        .quad            .Lx00464_0_s
.Lx00464_0_s:
                        .string          "*** cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00461_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00466_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_source_γ
#-----------------------------------------------------------------------------------------------------------------------
n00463_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00459_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_var_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00468_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn940:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn940]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n00467_return_α
                                                                                        jmp   n00469_var_α
n00466_call_builtin_icon_β:
                                                                                        jmp   n00467_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn942:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn942]
                        lea              rsi, [rbp + 496]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_source_ω
                                                                                        jmp   proc_source_ω
n00468_call_builtin_icon_β:
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
n00469_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00470_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00470_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00471_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00467_return_α
n00471_conjunction_β:
                                                                                        jmp   n00467_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_scan_α:
                        lea              rdi, [rbp + 48]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   proc_source_ω
n00441_scan_β:
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_source_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_source_β:
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_source_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 760]
                        lea              rsp, [rbp + 784]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_source_ω:
                        mov              rax, [rbp + 768]
                        lea              rsp, [rbp + 784]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_source_dcα:
                        pop              r11
                        sub              rsp, 800
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 752], r11
                        lea              rax, [rip + .Lx00472_2]
                        mov              qword ptr [rbp + 760], rax
                        lea              rax, [rip + .Lx00472_3]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 720
                        mov              edx, 752
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_source_α_body
.Lx00472_2:
                        mov              rdx, qword ptr [rsp + -800]
                        mov              rcx, rsp
                        add              rcx, -784
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00472_3:
                        mov              rdi, qword ptr [rsp + -800]
                        mov              rsi, rsp
                        add              rsi, -784
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_symimage_α
proc_symimage_α:
                        .global          proc_symimage_α
                        .global          proc_symimage_β
                        .global          proc_symimage_γ
                        .global          proc_symimage_ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_symimage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00473_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00474_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn979:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn979]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                                                                                        jmp   n00475_lit_string_α
n00474_call_builtin_icon_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
n00475_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00476_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00477_call_builtin_α
.Lx00476_0:
                        .quad            .Lx00476_0_s
.Lx00476_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00477_call_builtin_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn982:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn982]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n00478_lit_string_α
                                                                                        jmp   n00479_var_α
n00477_call_builtin_β:
                                                                                        jmp   n00478_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00479_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00480_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00478_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx00481_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00482_call_builtin_α
.Lx00481_0:
                        .quad            .Lx00481_0_s
.Lx00481_0_s:
                        .string          "nonterm"
#-----------------------------------------------------------------------------------------------------------------------
n00480_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_call_builtin_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn988:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn988]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n00484_lit_string_α
                                                                                        jmp   n00485_lit_string_α
n00482_call_builtin_β:
                                                                                        jmp   n00484_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00486_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00485_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx00487_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00488_var_α
.Lx00487_0:
                        .quad            .Lx00487_0_s
.Lx00487_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00484_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx00489_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00490_call_builtin_α
.Lx00489_0:
                        .quad            .Lx00489_0_s
.Lx00489_0_s:
                        .string          "charset"
#-----------------------------------------------------------------------------------------------------------------------
n00486_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_symimage_γ
#-----------------------------------------------------------------------------------------------------------------------
n00488_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00491_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_call_builtin_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn997:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn997]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                                                                                        jmp   n00492_lit_string_α
n00490_call_builtin_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
n00491_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00493_0]
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00494_binop_α
.Lx00493_0:
                        .quad            .Lx00493_0_s
.Lx00493_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n00492_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx00495_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00496_var_α
.Lx00495_0:
                        .quad            .Lx00495_0_s
.Lx00495_0_s:
                        .string          "<'"
#-----------------------------------------------------------------------------------------------------------------------
n00494_binop_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n00497_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00496_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00498_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00497_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx00499_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00500_binop_α
.Lx00499_0:
                        .quad            .Lx00499_0_s
.Lx00499_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00498_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00501_0]
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_symimage_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00502_binop_α
.Lx00501_0:
                        .quad            .Lx00501_0_s
.Lx00501_0_s:
                        .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
n00500_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00503_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00502_binop_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00504_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00503_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00504_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00505_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00506_binop_α
.Lx00505_0:
                        .quad            .Lx00505_0_s
.Lx00505_0_s:
                        .string          "'>"
#-----------------------------------------------------------------------------------------------------------------------
n00506_binop_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00507_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00507_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00483_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 600]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_dcα:
                        pop              r11
                        sub              rsp, 640
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 592], r11
                        lea              rax, [rip + .Lx00508_2]
                        mov              qword ptr [rbp + 600], rax
                        lea              rax, [rip + .Lx00508_3]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 576
                        mov              edx, 592
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_symimage_α_body
.Lx00508_2:
                        mov              rdx, qword ptr [rsp + -640]
                        mov              rcx, rsp
                        add              rcx, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00508_3:
                        mov              rdi, qword ptr [rsp + -640]
                        mov              rsi, rsp
                        add              rsi, -624
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_syms_α
proc_syms_α:
                        .global          proc_syms_α
                        .global          proc_syms_β
                        .global          proc_syms_γ
                        .global          proc_syms_ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 864
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_syms_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00509_disjunction_α:
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                        mov              dword ptr [rbp + 736], 0
                                                                                        jmp   n00510_var_ref_α
n00509_disjunction_as:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        jne   .Lx00511_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00512_make_list_α
.Lx00511_0:
                                                                                        jmp   n00512_make_list_α
n00509_disjunction_β:
                        mov              eax, dword ptr [rbp + 736]
                                                                                        jmp   n00512_make_list_α
n00509_disjunction_af:
                        add              dword ptr [rbp + 736], 1
                        mov              eax, dword ptr [rbp + 736]
                                                                                        jmp   n00512_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_make_list_α:
                        lea              rdi, [rbp + 720]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00513_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00510_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052480
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00514_nulltest_var_α
n00510_var_ref_β:
                                                                                        jmp   n00509_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00515_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00509_disjunction_as
n00515_assign_β:
                                                                                        jmp   n00512_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00513_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00514_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 99
                                                                                        je    n00509_disjunction_af
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00509_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00509_disjunction_af
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00517_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00518_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00517_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx00519_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00520_assign_var_α
.Lx00519_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00518_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00523_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_assign_var_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00509_disjunction_af
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00524_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00525_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_syms_γ
#-----------------------------------------------------------------------------------------------------------------------
n00524_lit_charset_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00526_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00527_unop_α
.Lx00526_0:
                        .quad            .Lx00526_0_s
.Lx00526_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00525_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n00528_var_α
n00525_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx00529_0
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00530_call_builtin_icon_α
.Lx00529_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00529_1
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00530_call_builtin_icon_α
.Lx00529_1:
                                                                                        jmp   n00530_call_builtin_icon_α
n00525_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        je    n00525_disjunction_af
                                                                                        jmp   n00531_call_value_β
n00525_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 1
                                                                                        je    n00532_lit_integer_α
                                                                                        jmp   n00533_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_scan_α:
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n00522_var_α
n00533_scan_β:
                                                                                        jmp   n00522_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00527_unop_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n00515_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00530_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn1071:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1071]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n00525_disjunction_β
                                                                                        jmp   n00521_var_α
n00530_call_builtin_icon_β:
                                                                                        jmp   n00525_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00528_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00534_scan_many_α
n00528_var_β:
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00532_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx00535_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00536_lit_string_α
n00532_lit_integer_β:
                                                                                        jmp   n00525_disjunction_af
.Lx00535_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00531_call_value_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 408], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        mov              qword ptr [rbp + 416], 0
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        lea              rdx, [rbp + 368]
                        mov              ecx, 3
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00537_7
                        lea              rcx, [rip + .Lx00537_3]
                        lea              rdx, [rip + .Lx00537_4]
                                                                                        jmp   rax
.Lx00537_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00537_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00537_2
.Lx00537_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00537_2
.Lx00537_4:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00537_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00537_2
.Lx00537_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00537_2
.Lx00537_7:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        lea              rdx, [rbp + 368]
                        mov              ecx, 3
                        lea              r8, [rbp + 416]
                        call             rt_call_value_gen_h@PLT
.Lx00537_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n00538_scan_upto_β
                                                                                        jmp   n00539_call_proc_staged_α
n00531_call_value_β:
                        mov              rax, qword ptr [rbp + 416]
                        cmp              rax, 1
                                                                                        jne   .Lx00537_8
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx00537_8:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rdi, [rbp + 416]
                        call             rt_call_value_resume_h@PLT
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n00538_scan_upto_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00539_call_proc_staged_α
                                                                                        jmp   n00538_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00540_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 264]
                        cmp              rax, 1
                                                                                        jge   .Lx00541_0
                        add              rax, r15
                        add              rax, 1
.Lx00541_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00541_239
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00541_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00541_240
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00541_240:
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
                                                                                        jmp   n00525_disjunction_as
n00540_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00539_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 352]
                        call             proc_defnon_dcα
                                                                                        jmp   .Lx00542_2
.Lx00542_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00531_call_value_β
                                                                                        jmp   n00525_disjunction_as
n00539_call_proc_staged_β:
                                                                                        jmp   n00531_call_value_β
.Lx00542_0:
                        .quad            .Lx00542_0_s
.Lx00542_0_s:
                        .string          "defnon"
#-----------------------------------------------------------------------------------------------------------------------
n00534_scan_many_α:
                        mov              eax, r14d
.Lx00543_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00543_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 280]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00543_1
                        add              eax, 1
                                                                                        jmp   .Lx00543_0
.Lx00543_1:
                        cmp              eax, r14d
                                                                                        je    n00525_disjunction_af
                        mov              qword ptr [rbp + 256], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 264], rcx
                                                                                        jmp   n00540_scan_tab_α
n00534_scan_many_β:
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00536_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx00544_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00545_scan_match_α
.Lx00544_0:
                        .quad            .Lx00544_0_s
.Lx00544_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00538_scan_upto_α:
                        mov              qword ptr [rbp + 592], r14
.Lx00546_0:
                        mov              rax, qword ptr [rbp + 592]
                        cmp              rax, r15
                                                                                        jge   n00525_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00546_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00546_1
                        mov              qword ptr [rbp + 576], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00547_scan_tab_α
.Lx00546_1:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx00546_0
n00538_scan_upto_β:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx00546_0
.Lx00546_2:
                        .quad            .Lx00546_2_s
.Lx00546_2_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00545_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00548_239
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00548_239:
                        mov              rdi, qword ptr [rip + .Lx00548_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00548_240
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00548_240:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00549_scan_tab_α
.Lx00548_0:
                        .quad            .Lx00548_0_s
.Lx00548_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00547_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 584]
                        cmp              rax, 1
                                                                                        jge   .Lx00550_0
                        add              rax, r15
                        add              rax, 1
.Lx00550_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00550_239
                        add              rsp, 16
                                                                                        jmp   n00538_scan_upto_β
.Lx00550_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00550_240
                        add              rsp, 16
                                                                                        jmp   n00538_scan_upto_β
.Lx00550_240:
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
                                                                                        jmp   n00551_lit_integer_α
n00547_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00538_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00549_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 504]
                        cmp              rax, 1
                                                                                        jge   .Lx00552_0
                        add              rax, r15
                        add              rax, 1
.Lx00552_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00552_239
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00552_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00552_240
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00552_240:
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
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00553_lit_charset_α
n00549_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx00554_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00555_scan_move_α
.Lx00554_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00553_lit_charset_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              dword ptr [rbp + 612], -1
                        mov              rax, qword ptr [rip + .Lx00556_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00538_scan_upto_α
.Lx00556_0:
                        .quad            .Lx00556_0_s
.Lx00556_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00555_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00557_239
                        add              rsp, 16
                                                                                        jmp   n00538_scan_upto_β
.Lx00557_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00557_240
                        add              rsp, 16
                                                                                        jmp   n00538_scan_upto_β
.Lx00557_240:
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
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n00531_call_value_α
n00555_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00538_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_β:
                                                                                        jmp   proc_syms_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00558_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00558_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 864
                        mov              edx, 880
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_syms_α_body
.Lx00558_2:
                        mov              rdx, qword ptr [rsp + -928]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00558_3:
                        mov              rdi, qword ptr [rsp + -928]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        .global          proc_options_α
                        .global          proc_options_β
                        .global          proc_options_γ
                        .global          proc_options_ω
                        sub              rsp, 2768
                        mov              [rsp + 2744], rcx
                        mov              [rsp + 2752], rdx
                        mov              [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2608
                        mov              edx, 2736
                        call             rt_jmp_frame_lexprep2@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00560_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00560_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 99
                                                                                        je    n00561_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00561_call_builtin_icon_α
                        cmp              eax, 0
                                                                                        jne   n00561_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00562_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00562_lit_charset_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00563_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00564_call_builtin_icon_α
.Lx00563_0:
                        .quad            .Lx00563_0_s
.Lx00563_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00561_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1207:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1207]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n00565_make_list_α
                                                                                        jmp   n00566_assign_α
n00561_call_builtin_icon_β:
                                                                                        jmp   n00565_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00564_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn1209:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1209]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n00561_call_builtin_icon_α
                                                                                        jmp   n00567_assign_var_α
n00564_call_builtin_icon_β:
                                                                                        jmp   n00561_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00566_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00565_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00568_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              rdx, qword ptr [rbp + 2544]
                        mov              rcx, qword ptr [rbp + 2552]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00561_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00561_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00569_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00569_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00570_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00570_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1218:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1218]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00571_var_α
                                                                                        jmp   n00572_assign_α
n00570_call_builtin_icon_β:
                                                                                        jmp   n00571_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00571_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00573_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00572_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00574_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00573_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00575_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00576_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00577_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00574_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00578_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00575_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1229:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1229]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n00576_var_α
                                                                                        jmp   n00579_call_builtin_icon_α
n00575_call_builtin_icon_β:
                                                                                        jmp   n00576_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00577_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
n00578_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00580_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00579_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn1234:             .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1234]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n00576_var_α
                                                                                        jmp   n00571_var_α
n00579_call_builtin_icon_β:
                                                                                        jmp   n00576_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00580_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00581_lit_string_α
n00580_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00582_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00583_scan_α
.Lx00582_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00582_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00583_scan_α
.Lx00582_1:
                                                                                        jmp   n00583_scan_α
n00580_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00584_disjunction_β
                                                                                        jmp   n00585_scan_α
n00580_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00586_var_α
                                                                                        jmp   n00585_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00583_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00569_var_α
n00583_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00580_disjunction_β
                                                                                        jmp   n00569_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00581_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx00587_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00588_scan_match_α
n00581_lit_string_β:
                                                                                        jmp   n00580_disjunction_af
.Lx00587_0:
                        .quad            .Lx00587_0_s
.Lx00587_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00584_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00589_var_α
n00584_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00590_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00591_lit_integer_α
.Lx00590_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00590_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00591_lit_integer_α
.Lx00590_1:
                                                                                        jmp   n00591_lit_integer_α
n00584_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00592_disjunction_β
                                                                                        jmp   n00591_lit_integer_α
n00584_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00593_lit_string_α
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00586_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00594_var_α
n00586_var_β:
                                                                                        jmp   n00585_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00595_conjunction_α:
                                                                                        jmp   n00580_disjunction_as
n00595_conjunction_β:
                                                                                        jmp   n00585_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00596_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn1246:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1246]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n00585_scan_α
                                                                                        jmp   n00580_disjunction_as
n00596_call_builtin_icon_β:
                                                                                        jmp   n00585_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00588_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00597_239
                        add              rsp, 16
                                                                                        jmp   n00580_disjunction_af
.Lx00597_239:
                        mov              rdi, qword ptr [rip + .Lx00597_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00597_240
                        add              rsp, 16
                                                                                        jmp   n00580_disjunction_af
.Lx00597_240:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00598_scan_tab_α
.Lx00597_0:
                        .quad            .Lx00597_0_s
.Lx00597_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00591_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00599_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00600_scan_move_α
.Lx00599_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00589_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00601_var_α
n00589_var_β:
                                                                                        jmp   n00584_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00592_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00602_lit_charset_α
n00592_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00603_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00604_assign_var_α
.Lx00603_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00603_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00604_assign_var_α
.Lx00603_1:
                                                                                        jmp   n00604_assign_var_α
n00592_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00591_lit_integer_α
                                                                                        jmp   n00591_lit_integer_α
n00592_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00605_lit_integer_α
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00593_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx00606_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00607_var_α
n00593_lit_string_β:
                                                                                        jmp   n00591_lit_integer_α
.Lx00606_0:
                        .quad            .Lx00606_0_s
.Lx00606_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00604_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00591_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00584_disjunction_as
n00604_assign_var_β:
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00608_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn1257:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1257]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n00591_lit_integer_α
                                                                                        jmp   n00584_disjunction_as
n00608_call_builtin_icon_β:
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00594_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00596_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00585_scan_α:
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00569_var_α
n00585_scan_β:
                                                                                        jmp   n00569_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00598_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00609_0
                        add              rax, r15
                        add              rax, 1
.Lx00609_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00609_239
                        add              rsp, 16
                                                                                        jmp   n00580_disjunction_af
.Lx00609_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00609_240
                        add              rsp, 16
                                                                                        jmp   n00580_disjunction_af
.Lx00609_240:
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
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00610_lit_integer_α
n00598_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00580_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00600_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00611_239
                        add              rsp, 16
                                                                                        jmp   n00585_scan_α
.Lx00611_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00611_240
                        add              rsp, 16
                                                                                        jmp   n00585_scan_α
.Lx00611_240:
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00612_assign_α
n00600_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00585_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00601_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00613_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00602_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00614_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00615_var_ref_α
n00602_lit_charset_β:
                                                                                        jmp   n00592_disjunction_af
.Lx00614_0:
                        .quad            .Lx00614_0_s
.Lx00614_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00605_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx00616_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00592_disjunction_as
n00605_lit_integer_β:
                                                                                        jmp   n00591_lit_integer_α
.Lx00616_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00617_conjunction_α:
                                                                                        jmp   n00592_disjunction_as
n00617_conjunction_β:
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00607_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00608_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00610_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx00618_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00619_scan_pos_α
.Lx00618_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00612_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00584_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00613_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              qword ptr [rbp + 1872], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00620_60:
                        .section         .rodata
.Lbynamegenfn481:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn481]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 2
                        lea              rcx, [rbp + 1872]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n00584_disjunction_af
                                                                                        jmp   n00621_lit_integer_α
n00613_call_builtin_gen_β:
                                                                                        jmp   .Lx00620_60
#-----------------------------------------------------------------------------------------------------------------------
n00615_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00622_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00619_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00623_0
                        add              rax, r15
                        add              rax, 1
.Lx00623_0:
                        cmp              rax, 1
                                                                                        jl    n00624_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00624_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00624_var_α
                        mov              qword ptr [rbp + 2224], 6
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00598_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00621_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx00625_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00626_op75_α
.Lx00625_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00622_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00627_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00624_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00628_conjunction_α
n00624_var_β:
                                                                                        jmp   n00598_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00626_op75_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 7
                                                                                        je    .Lx00629_1
                        cmp              eax, 6
                                                                                        jne   .Lx00629_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 6
                                                                                        jne   .Lx00629_0
.Lx00629_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00630_binop_α
.Lx00629_0:
                        lea              rdi, [rbp + 1824]
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1808]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00630_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00627_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00592_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00631_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00628_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00632_disjunction_α
n00628_conjunction_β:
                                                                                        jmp   n00580_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00630_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 100
                                                                                        je    .Lx00633_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx00633_2
.Lx00633_1:
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 6
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00634_assign_α
.Lx00633_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              r8d, 0
                        lea              r9, [rbp + 1792]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00634_assign_α
.Lx00633_2:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00584_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00634_assign_α
n00630_binop_β:
                                                                                        jmp   n00584_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00631_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00592_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00635_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00632_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00636_lit_string_α
n00632_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00637_0
                                                                                        jmp   n00591_lit_integer_α
.Lx00637_0:
                                                                                        jmp   n00591_lit_integer_α
n00632_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00591_lit_integer_α
n00632_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00634_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00638_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00635_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00639_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00636_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx00640_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00641_scan_match_α
n00636_lit_string_β:
                                                                                        jmp   n00632_disjunction_af
.Lx00640_0:
                        .quad            .Lx00640_0_s
.Lx00640_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00638_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00642_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00639_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn497:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn497]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n00592_disjunction_af
                                                                                        jmp   n00643_disjunction_α
n00639_call_builtin_icon_β:
                                                                                        jmp   n00592_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00641_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00644_239
                        add              rsp, 16
                                                                                        jmp   n00632_disjunction_af
.Lx00644_239:
                        mov              rdi, qword ptr [rip + .Lx00644_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00644_240
                        add              rsp, 16
                                                                                        jmp   n00632_disjunction_af
.Lx00644_240:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00645_scan_tab_α
.Lx00644_0:
                        .quad            .Lx00644_0_s
.Lx00644_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00642_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00646_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00643_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00647_lit_string_α
n00643_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00648_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00649_assign_α
.Lx00648_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00648_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00649_assign_α
.Lx00648_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00648_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00649_assign_α
.Lx00648_2:
                                                                                        jmp   n00649_assign_α
n00643_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00643_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00643_disjunction_af
                                                                                        jmp   n00643_disjunction_af
n00643_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00650_var_α
                        cmp              eax, 2
                                                                                        je    n00651_lit_string_α
                                                                                        jmp   n00652_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00645_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00653_0
                        add              rax, r15
                        add              rax, 1
.Lx00653_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00653_239
                        add              rsp, 16
                                                                                        jmp   n00632_disjunction_af
.Lx00653_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00653_240
                        add              rsp, 16
                                                                                        jmp   n00632_disjunction_af
.Lx00653_240:
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
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00654_lit_integer_α
n00645_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00632_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00646_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00591_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00592_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00649_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00652_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00647_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx00655_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00656_lit_integer_α
n00647_lit_string_β:
                                                                                        jmp   n00643_disjunction_af
.Lx00655_0:
                        .quad            .Lx00655_0_s
.Lx00655_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00650_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00657_call_builtin_icon_α
n00650_var_β:
                                                                                        jmp   n00643_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00651_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx00658_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00659_var_α
n00651_lit_string_β:
                                                                                        jmp   n00643_disjunction_af
.Lx00658_0:
                        .quad            .Lx00658_0_s
.Lx00658_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00660_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00643_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00643_disjunction_as
n00660_binop_test_β:
                                                                                        jmp   n00643_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00657_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn1314:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1314]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n00643_disjunction_af
                                                                                        jmp   n00643_disjunction_as
n00657_call_builtin_icon_β:
                                                                                        jmp   n00643_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00661_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn1316:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1316]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n00643_disjunction_af
                                                                                        jmp   n00643_disjunction_as
n00661_call_builtin_icon_β:
                                                                                        jmp   n00643_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00654_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx00662_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00663_scan_pos_α
.Lx00662_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00652_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00664_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00656_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx00665_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00666_scan_tab_α
.Lx00665_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00659_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00661_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00663_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00667_0
                        add              rax, r15
                        add              rax, 1
.Lx00667_0:
                        cmp              rax, 1
                                                                                        jl    n00645_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00645_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00645_scan_tab_β
                        mov              qword ptr [rbp + 2080], 6
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00668_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00664_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx00669_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00670_call_builtin_α
.Lx00669_0:
                        .quad            .Lx00669_0_s
.Lx00669_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00666_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00671_0
                        add              rax, r15
                        add              rax, 1
.Lx00671_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00671_239
                        add              rsp, 16
                                                                                        jmp   n00643_disjunction_af
.Lx00671_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00671_240
                        add              rsp, 16
                                                                                        jmp   n00643_disjunction_af
.Lx00671_240:
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
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00660_binop_test_α
n00666_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00643_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00668_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00571_var_α
n00668_conjunction_β:
                                                                                        jmp   n00632_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00670_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn1330:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1330]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n00672_lit_string_α
                                                                                        jmp   n00673_var_α
n00670_call_builtin_β:
                                                                                        jmp   n00672_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00673_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00674_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00672_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00675_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00676_call_builtin_α
.Lx00675_0:
                        .quad            .Lx00675_0_s
.Lx00675_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00674_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00676_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn1336:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1336]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00678_lit_string_α
                                                                                        jmp   n00679_disjunction_α
n00676_call_builtin_β:
                                                                                        jmp   n00678_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00677_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00617_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00679_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00680_var_α
n00679_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00681_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00682_assign_α
.Lx00681_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00681_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00682_assign_α
.Lx00681_1:
                                                                                        jmp   n00682_assign_α
n00679_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00679_disjunction_af
                                                                                        jmp   n00679_disjunction_af
n00679_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00683_lit_string_α
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00678_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00684_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00685_call_builtin_α
.Lx00684_0:
                        .quad            .Lx00684_0_s
.Lx00684_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00682_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00680_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00686_call_builtin_icon_α
n00680_var_β:
                                                                                        jmp   n00679_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00683_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00687_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00688_var_α
n00683_lit_string_β:
                                                                                        jmp   n00679_disjunction_af
.Lx00687_0:
                        .quad            .Lx00687_0_s
.Lx00687_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00686_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn1347:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1347]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n00679_disjunction_af
                                                                                        jmp   n00679_disjunction_as
n00686_call_builtin_icon_β:
                                                                                        jmp   n00679_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00689_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn1349:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1349]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n00679_disjunction_af
                                                                                        jmp   n00679_disjunction_as
n00689_call_builtin_icon_β:
                                                                                        jmp   n00679_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00685_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn1351:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1351]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n00591_lit_integer_α
                                                                                        jmp   n00690_disjunction_α
n00685_call_builtin_β:
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00688_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00691_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00690_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00692_var_α
n00690_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00693_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00694_assign_α
.Lx00693_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00693_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00694_assign_α
.Lx00693_1:
                                                                                        jmp   n00694_assign_α
n00690_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00690_disjunction_af
                                                                                        jmp   n00690_disjunction_af
n00690_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00695_lit_string_α
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00691_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx00696_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00689_call_builtin_icon_α
.Lx00696_0:
                        .quad            .Lx00696_0_s
.Lx00696_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00694_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00692_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00697_call_builtin_icon_α
n00692_var_β:
                                                                                        jmp   n00690_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00695_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx00698_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00699_var_α
n00695_lit_string_β:
                                                                                        jmp   n00690_disjunction_af
.Lx00698_0:
                        .quad            .Lx00698_0_s
.Lx00698_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00697_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn1362:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1362]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n00690_disjunction_af
                                                                                        jmp   n00690_disjunction_as
n00697_call_builtin_icon_β:
                                                                                        jmp   n00690_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00700_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn1364:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1364]
                        lea              rsi, [rbp + 768]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n00690_disjunction_af
                                                                                        jmp   n00690_disjunction_as
n00700_call_builtin_icon_β:
                                                                                        jmp   n00690_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00699_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00701_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00701_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00702_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00700_call_builtin_icon_α
.Lx00702_0:
                        .quad            .Lx00702_0_s
.Lx00702_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2744]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        mov              rax, [rbp + 2752]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2776], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 2736], r11
                        lea              rax, [rip + .Lx00703_2]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rax, [rip + .Lx00703_3]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2608
                        mov              edx, 2736
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_options_α_body
.Lx00703_2:
                        mov              rdx, qword ptr [rsp + -2784]
                        mov              rcx, rsp
                        add              rcx, -2768
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00703_3:
                        mov              rdi, qword ptr [rsp + -2784]
                        mov              rsi, rsp
                        add              rsi, -2768
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        .global          proc_Init___α
                        .global          proc_Init___β
                        .global          proc_Init___γ
                        .global          proc_Init___ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00704_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00705_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00705_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n00706_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00706_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00707_2
.Lx00707_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n00708_call_proc_staged_α
                                                                                        jmp   n00708_call_proc_staged_α
n00706_call_proc_staged_β:
                                                                                        jmp   n00708_call_proc_staged_α
.Lx00707_0:
                        .quad            .Lx00707_0_s
.Lx00707_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00708_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00709_2
.Lx00709_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n00710_call_proc_staged_α
                                                                                        jmp   n00710_call_proc_staged_α
n00708_call_proc_staged_β:
                                                                                        jmp   n00710_call_proc_staged_α
.Lx00709_0:
                        .quad            .Lx00709_0_s
.Lx00709_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00710_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00711_2
.Lx00711_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00712_disjunction_α
                                                                                        jmp   n00712_disjunction_α
n00710_call_proc_staged_β:
                                                                                        jmp   n00712_disjunction_α
.Lx00711_0:
                        .quad            .Lx00711_0_s
.Lx00711_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00712_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00713_lit_string_α
n00712_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00714_0
                                                                                        jmp   n00715_var_α
.Lx00714_0:
                                                                                        jmp   n00715_var_α
n00712_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00715_var_α
n00712_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00715_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00715_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00716_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00716_240
                        add              rsp, 16
                                                                                        jmp   n00717_var_α
.Lx00716_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00718_assign_α
.Lx00716_0:
                        .quad            .Lx00716_0_s
.Lx00716_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00713_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx00719_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00720_call_builtin_icon_α
n00713_lit_string_β:
                                                                                        jmp   n00712_disjunction_af
.Lx00719_0:
                        .quad            .Lx00719_0_s
.Lx00719_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00721_conjunction_α:
                                                                                        jmp   n00712_disjunction_as
n00721_conjunction_β:
                                                                                        jmp   n00715_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00718_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n00717_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00717_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00722_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00722_240
                        add              rsp, 16
                                                                                        jmp   n00723_lit_integer_α
.Lx00722_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00724_assign_α
.Lx00722_0:
                        .quad            .Lx00722_0_s
.Lx00722_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00720_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1406:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1406]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00712_disjunction_af
                                                                                        jmp   n00725_lit_string_α
n00720_call_builtin_icon_β:
                                                                                        jmp   n00712_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00724_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n00723_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00723_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00726_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00727_assign_α
.Lx00726_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00725_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00728_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00729_call_builtin_icon_α
.Lx00728_0:
                        .quad            .Lx00728_0_s
.Lx00728_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00727_assign_α:
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              rdi, qword ptr [rip + .Lx00730_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00731_assign_α
.Lx00730_0:
                        .quad            .Lx00730_0_s
.Lx00730_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00729_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1412:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1412]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00732_return_α
                                                                                        jmp   n00732_return_α
n00729_call_builtin_icon_β:
                                                                                        jmp   n00732_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00731_assign_α:
                        mov              rsi, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rip + .Lx00733_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00734_return_α
.Lx00733_0:
                        .quad            .Lx00733_0_s
.Lx00733_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00732_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00734_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___β:
                                                                                        jmp   proc_Init___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx00735_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx00735_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 432
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Init___α_body
.Lx00735_2:
                        mov              rdx, qword ptr [rsp + -480]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00735_3:
                        mov              rdi, qword ptr [rsp + -480]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        .global          proc_Term___α
                        .global          proc_Term___β
                        .global          proc_Term___γ
                        .global          proc_Term___ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00736_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00737_lit_string_α
n00736_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00738_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00739_var_α
.Lx00738_0:
                                                                                        jmp   n00739_var_α
n00736_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00739_var_α
n00736_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00739_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00739_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00740_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00737_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx00741_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00742_call_builtin_icon_α
n00737_lit_string_β:
                                                                                        jmp   n00743_var_α
.Lx00741_0:
                        .quad            .Lx00741_0_s
.Lx00741_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00744_conjunction_α:
                                                                                        jmp   n00736_disjunction_as
n00744_conjunction_β:
                                                                                        jmp   n00739_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00740_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00745_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00746_call_proc_staged_α
.Lx00745_0:
                        .quad            .Lx00745_0_s
.Lx00745_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00747_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00748_2
.Lx00748_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00749_call_proc_staged_α
                                                                                        jmp   n00749_call_proc_staged_α
n00747_call_proc_staged_β:
                                                                                        jmp   n00749_call_proc_staged_α
.Lx00748_0:
                        .quad            .Lx00748_0_s
.Lx00748_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00742_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1443:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1443]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n00743_var_α
                                                                                        jmp   n00736_disjunction_af
n00742_call_builtin_icon_β:
                                                                                        jmp   n00743_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00746_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00750_2
.Lx00750_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00747_call_proc_staged_α
                                                                                        jmp   n00751_call_builtin_icon_α
n00746_call_proc_staged_β:
                                                                                        jmp   n00747_call_proc_staged_α
.Lx00750_0:
                        .quad            .Lx00750_0_s
.Lx00750_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00749_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00752_2
.Lx00752_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n00753_call_proc_staged_α
                                                                                        jmp   n00753_call_proc_staged_α
n00749_call_proc_staged_β:
                                                                                        jmp   n00753_call_proc_staged_α
.Lx00752_0:
                        .quad            .Lx00752_0_s
.Lx00752_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00743_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00754_var_α
n00743_var_β:
                                                                                        jmp   n00736_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00751_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1450:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1450]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n00747_call_proc_staged_α
                                                                                        jmp   n00747_call_proc_staged_α
n00751_call_builtin_icon_β:
                                                                                        jmp   n00747_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00753_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00755_2
.Lx00755_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00756_return_α
                                                                                        jmp   n00756_return_α
n00753_call_proc_staged_β:
                                                                                        jmp   n00756_return_α
.Lx00755_0:
                        .quad            .Lx00755_0_s
.Lx00755_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00754_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00757_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00756_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
n00757_assign_α:
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              rdi, qword ptr [rip + .Lx00758_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00759_var_α
.Lx00758_0:
                        .quad            .Lx00758_0_s
.Lx00758_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00759_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00760_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00760_assign_α:
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              rdi, qword ptr [rip + .Lx00761_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00744_conjunction_α
.Lx00761_0:
                        .quad            .Lx00761_0_s
.Lx00761_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx00762_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx00762_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, rbp
                        mov              esi, 448
                        mov              edx, 480
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Term___α_body
.Lx00762_2:
                        mov              rdx, qword ptr [rsp + -528]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00762_3:
                        mov              rdi, qword ptr [rsp + -528]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        .global          proc_Collections___α
                        .global          proc_Collections___β
                        .global          proc_Collections___γ
                        .global          proc_Collections___ω
                        sub              rsp, 944
                        mov              [rsp + 920], rcx
                        mov              [rsp + 928], rdx
                        mov              [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 912
                        call             rt_jmp_frame_lexprep2@PLT
proc_Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00763_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00764_var_ref_α
n00763_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00765_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00766_make_list_α
.Lx00765_0:
                                                                                        jmp   n00766_make_list_α
n00763_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00766_make_list_α
n00763_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00766_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00766_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00767_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00764_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052512
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00768_nulltest_var_α
n00764_var_ref_β:
                                                                                        jmp   n00763_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00769_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00763_disjunction_as
n00769_assign_β:
                                                                                        jmp   n00766_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00767_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00770_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00768_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 99
                                                                                        je    n00763_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00763_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00763_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00771_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00770_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00772_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00771_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx00773_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00774_assign_var_α
.Lx00773_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00772_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00775_1:
                        mov              rdi, qword ptr [rip + .Lx00775_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00776_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00777_call_builtin_icon_α
n00772_keyword_icon_gen_β:
                                                                                        jmp   .Lx00775_1
.Lx00775_0:
                        .quad            .Lx00775_0_s
.Lx00775_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00776_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00778_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00779_call_builtin_icon_α
.Lx00778_0:
                        .quad            .Lx00778_0_s
.Lx00778_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00774_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00763_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00780_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00777_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1512:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1512]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00772_keyword_icon_gen_β
                                                                                        jmp   n00772_keyword_icon_gen_β
n00777_call_builtin_icon_β:
                                                                                        jmp   n00772_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00779_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1514:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1514]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00781_lit_integer_α
                                                                                        jmp   n00781_lit_integer_α
n00779_call_builtin_icon_β:
                                                                                        jmp   n00781_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00780_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00782_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00783_lit_string_α
.Lx00782_0:
                        .quad            .Lx00782_0_s
.Lx00782_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00781_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00784_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00785_var_α
.Lx00784_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00783_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00786_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00787_lit_string_α
.Lx00786_0:
                        .quad            .Lx00786_0_s
.Lx00786_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00785_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00788_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00787_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx00789_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00790_lit_string_α
.Lx00789_0:
                        .quad            .Lx00789_0_s
.Lx00789_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00788_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00791_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00792_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00790_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx00793_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00794_make_list_α
.Lx00793_0:
                        .quad            .Lx00793_0_s
.Lx00793_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00791_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00795_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00792_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00796_assign_α
n00791_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00795_0
#-----------------------------------------------------------------------------------------------------------------------
n00794_make_list_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00769_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00796_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00797_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00797_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00798_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00798_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00799_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00799_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00800_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00800_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00801_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00802_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00801_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00791_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00802_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00801_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00803_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00803_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00804_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00804_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00805_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00805_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00801_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00806_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00806_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00801_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00807_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00807_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00808_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00809_call_builtin_icon_α
.Lx00808_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00809_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1546:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1546]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00801_unmark_α
                                                                                        jmp   n00810_call_builtin_icon_α
n00809_call_builtin_icon_β:
                                                                                        jmp   n00801_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00810_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1548:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1548]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00801_unmark_α
                                                                                        jmp   n00801_unmark_α
n00810_call_builtin_icon_β:
                                                                                        jmp   n00801_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 920]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        mov              rax, [rbp + 928]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        sub              rsp, 960
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 912], r11
                        lea              rax, [rip + .Lx00811_2]
                        mov              qword ptr [rbp + 920], rax
                        lea              rax, [rip + .Lx00811_3]
                        mov              qword ptr [rbp + 928], rax
                        mov              rdi, rbp
                        mov              esi, 880
                        mov              edx, 912
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Collections___α_body
.Lx00811_2:
                        mov              rdx, qword ptr [rsp + -960]
                        mov              rcx, rsp
                        add              rcx, -944
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00811_3:
                        mov              rdi, qword ptr [rsp + -960]
                        mov              rsi, rsp
                        add              rsi, -944
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        .global          proc_Regions___α
                        .global          proc_Regions___β
                        .global          proc_Regions___γ
                        .global          proc_Regions___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00812_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00813_var_ref_α
n00812_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00814_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00815_make_list_α
.Lx00814_0:
                                                                                        jmp   n00815_make_list_α
n00812_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00815_make_list_α
n00812_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00815_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00815_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00816_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00813_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052544
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00817_nulltest_var_α
n00813_var_ref_β:
                                                                                        jmp   n00812_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00818_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00812_disjunction_as
n00818_assign_β:
                                                                                        jmp   n00815_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00816_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00819_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00817_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00812_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00812_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00812_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00820_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00819_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00821_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00820_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00822_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00823_assign_var_α
.Lx00822_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00821_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00824_1:
                        mov              rdi, qword ptr [rip + .Lx00824_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00825_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00826_call_builtin_icon_α
n00821_keyword_icon_gen_β:
                                                                                        jmp   .Lx00824_1
.Lx00824_0:
                        .quad            .Lx00824_0_s
.Lx00824_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00825_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00827_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00828_call_builtin_icon_α
.Lx00827_0:
                        .quad            .Lx00827_0_s
.Lx00827_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00823_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00812_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00829_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00826_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1602:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1602]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00821_keyword_icon_gen_β
                                                                                        jmp   n00821_keyword_icon_gen_β
n00826_call_builtin_icon_β:
                                                                                        jmp   n00821_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00828_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1604:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1604]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00830_lit_integer_α
                                                                                        jmp   n00830_lit_integer_α
n00828_call_builtin_icon_β:
                                                                                        jmp   n00830_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00829_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00831_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00832_lit_string_α
.Lx00831_0:
                        .quad            .Lx00831_0_s
.Lx00831_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00830_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00833_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00834_var_α
.Lx00833_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00832_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00835_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00836_lit_string_α
.Lx00835_0:
                        .quad            .Lx00835_0_s
.Lx00835_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00834_var_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00837_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00836_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00838_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00839_make_list_α
.Lx00838_0:
                        .quad            .Lx00838_0_s
.Lx00838_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00837_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00840_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00841_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00839_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00818_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00840_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00842_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00841_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00843_assign_α
n00840_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00842_0
#-----------------------------------------------------------------------------------------------------------------------
n00843_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00844_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00844_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00845_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00845_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052528
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00846_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00846_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00847_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00847_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00848_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00849_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00848_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00840_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00849_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00848_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00850_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00850_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00851_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00852_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00852_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00848_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00853_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00853_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00848_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00854_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00854_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00855_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00856_call_builtin_icon_α
.Lx00855_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00856_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1635:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1635]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00848_unmark_α
                                                                                        jmp   n00857_call_builtin_icon_α
n00856_call_builtin_icon_β:
                                                                                        jmp   n00848_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00857_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1637:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1637]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00848_unmark_α
                                                                                        jmp   n00848_unmark_α
n00857_call_builtin_icon_β:
                                                                                        jmp   n00848_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00858_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00858_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Regions___α_body
.Lx00858_2:
                        mov              rdx, qword ptr [rsp + -928]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00858_3:
                        mov              rdi, qword ptr [rsp + -928]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        .global          proc_Signature___α
                        .global          proc_Signature___β
                        .global          proc_Signature___γ
                        .global          proc_Signature___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00859_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00860_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00861_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00862_call_builtin_icon_α
n00859_keyword_icon_β:
                                                                                        jmp   n00861_keyword_icon_α
.Lx00860_0:
                        .quad            .Lx00860_0_s
.Lx00860_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00862_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1648:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1648]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n00861_keyword_icon_α
                                                                                        jmp   n00861_keyword_icon_α
n00862_call_builtin_icon_β:
                                                                                        jmp   n00861_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00861_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00863_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00864_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00865_call_builtin_icon_α
n00861_keyword_icon_β:
                                                                                        jmp   n00864_keyword_icon_gen_α
.Lx00863_0:
                        .quad            .Lx00863_0_s
.Lx00863_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00865_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn1651:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1651]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n00864_keyword_icon_gen_α
                                                                                        jmp   n00864_keyword_icon_gen_α
n00865_call_builtin_icon_β:
                                                                                        jmp   n00864_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00864_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00866_1:
                        mov              rdi, qword ptr [rip + .Lx00866_0]
                        mov              rsi, qword ptr [rbp + 80]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00867_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00868_call_builtin_icon_α
n00864_keyword_icon_gen_β:
                                                                                        jmp   .Lx00866_1
.Lx00866_0:
                        .quad            .Lx00866_0_s
.Lx00866_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00868_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1654:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1654]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00864_keyword_icon_gen_β
                                                                                        jmp   n00864_keyword_icon_gen_β
n00868_call_builtin_icon_β:
                                                                                        jmp   n00864_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00867_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___β:
                                                                                        jmp   proc_Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00869_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00869_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Signature___α_body
.Lx00869_2:
                        mov              rdx, qword ptr [rsp + -304]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00869_3:
                        mov              rdi, qword ptr [rsp + -304]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        .global          proc_Storage___α
                        .global          proc_Storage___β
                        .global          proc_Storage___γ
                        .global          proc_Storage___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00870_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00871_var_ref_α
n00870_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00872_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00873_make_list_α
.Lx00872_0:
                                                                                        jmp   n00873_make_list_α
n00870_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00873_make_list_α
n00870_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00873_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00873_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00874_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00871_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052576
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00875_nulltest_var_α
n00871_var_ref_β:
                                                                                        jmp   n00870_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00876_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00870_disjunction_as
n00876_assign_β:
                                                                                        jmp   n00873_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00874_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00877_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00875_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00870_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00870_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00870_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00878_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00877_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00879_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00878_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00880_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00881_assign_var_α
.Lx00880_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00879_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00882_1:
                        mov              rdi, qword ptr [rip + .Lx00882_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00883_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00884_call_builtin_icon_α
n00879_keyword_icon_gen_β:
                                                                                        jmp   .Lx00882_1
.Lx00882_0:
                        .quad            .Lx00882_0_s
.Lx00882_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00883_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00885_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00886_call_builtin_icon_α
.Lx00885_0:
                        .quad            .Lx00885_0_s
.Lx00885_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00881_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00870_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00887_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00884_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1709:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1709]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00879_keyword_icon_gen_β
                                                                                        jmp   n00879_keyword_icon_gen_β
n00884_call_builtin_icon_β:
                                                                                        jmp   n00879_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00886_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1711:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1711]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00888_lit_integer_α
                                                                                        jmp   n00888_lit_integer_α
n00886_call_builtin_icon_β:
                                                                                        jmp   n00888_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00887_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00889_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00890_lit_string_α
.Lx00889_0:
                        .quad            .Lx00889_0_s
.Lx00889_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00888_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00891_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00892_var_α
.Lx00891_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00890_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00893_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00894_lit_string_α
.Lx00893_0:
                        .quad            .Lx00893_0_s
.Lx00893_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00892_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00895_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00894_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00896_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00897_make_list_α
.Lx00896_0:
                        .quad            .Lx00896_0_s
.Lx00896_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00895_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00898_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00899_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00897_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00876_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00898_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00900_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00899_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00901_assign_α
n00898_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00900_0
#-----------------------------------------------------------------------------------------------------------------------
n00901_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00902_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00902_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00903_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00903_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052560
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00904_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00904_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00905_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00905_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00907_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00906_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00898_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00907_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00908_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00908_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00909_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00909_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00910_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00910_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00911_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00911_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00912_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00912_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00913_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00914_call_builtin_icon_α
.Lx00913_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00914_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1742:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1742]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                                                                                        jmp   n00915_call_builtin_icon_α
n00914_call_builtin_icon_β:
                                                                                        jmp   n00906_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00915_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1744:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1744]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                                                                                        jmp   n00906_unmark_α
n00915_call_builtin_icon_β:
                                                                                        jmp   n00906_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00916_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00916_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Storage___α_body
.Lx00916_2:
                        mov              rdx, qword ptr [rsp + -928]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00916_3:
                        mov              rdi, qword ptr [rsp + -928]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        .global          proc_Time___α
                        .global          proc_Time___β
                        .global          proc_Time___γ
                        .global          proc_Time___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00917_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00918_var_ref_α
n00917_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00919_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00920_keyword_icon_α
.Lx00919_0:
                                                                                        jmp   n00920_keyword_icon_α
n00917_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00920_keyword_icon_α
n00917_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00920_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00920_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00921_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00922_var_α
n00920_keyword_icon_β:
                                                                                        jmp   proc_Time___ω
.Lx00921_0:
                        .quad            .Lx00921_0_s
.Lx00921_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00918_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052608
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00923_nulltest_var_α
n00918_var_ref_β:
                                                                                        jmp   n00917_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00924_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00917_disjunction_as
n00924_assign_β:
                                                                                        jmp   n00920_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00922_var_α:
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00925_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00923_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 99
                                                                                        je    n00917_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00917_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00917_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00926_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00925_op75_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx00927_1
                        cmp              eax, 6
                                                                                        jne   .Lx00927_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx00927_0
.Lx00927_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00928_op75_α
.Lx00927_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00928_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00926_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx00929_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00930_assign_var_α
.Lx00929_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00928_op75_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx00931_1
                        cmp              eax, 6
                                                                                        jne   .Lx00931_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx00931_0
.Lx00931_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00932_binop_α
.Lx00931_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00932_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00930_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00917_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00933_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00932_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 100
                                                                                        je    .Lx00934_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx00934_0
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx00934_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx00934_2
.Lx00934_1:
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00935_return_α
.Lx00934_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 1
                        lea              r9, [rbp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00935_return_α
.Lx00934_2:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00935_return_α
n00932_binop_β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
n00933_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00936_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00920_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00924_assign_α
n00933_keyword_icon_β:
                                                                                        jmp   n00920_keyword_icon_α
.Lx00936_0:
                        .quad            .Lx00936_0_s
.Lx00936_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00935_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00937_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00937_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Time___α_body
.Lx00937_2:
                        mov              rdx, qword ptr [rsp + -304]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00937_3:
                        mov              rdi, qword ptr [rsp + -304]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "nonterm(name)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "charset(chars)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "alts"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_alts_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_alts_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "comment"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_comment_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_comment_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "define"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_define_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_define_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "defnon"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_defnon_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_defnon_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_error_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_error_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "gener"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_gener_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1760
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_gener_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "generate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_generate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_generate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "getrhs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_getrhs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_getrhs_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "grammar"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_grammar_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1424
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_grammar_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "listimage"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_listimage_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_listimage_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "prompter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_prompter_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_prompter_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pwrite"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pwrite_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1696
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pwrite_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "source"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_source_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_source_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "symimage"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_symimage_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_symimage_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "syms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_syms_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_syms_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_options_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_options_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_Init___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_Init___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_Term___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_Term___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_Collections___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_Collections___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_Regions___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_Regions___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_Signature___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_Signature___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_Storage___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_Storage___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_Time___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_Time___dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "defs"
.Lgvan1:                .string          "ifile"
.Lgvan2:                .string          "in"
.Lgvan3:                .string          "limit"
.Lgvan4:                .string          "prompt"
.Lgvan5:                .string          "tswitch"
.Lgvan6:                .string          "Save__"
.Lgvan7:                .string          "Saves__"
.Lgvan8:                .string          "Name__"
.Lgvan9:                .string          "pwrite__STATIC__builtin"
.Lgvan10:               .string          "pwrite__INITFLAG__0"
.Lgvan11:               .string          "syms__STATIC__nonbrack"
.Lgvan12:               .string          "syms__INITFLAG__0"
.Lgvan13:               .string          "Collections____STATIC__labels"
.Lgvan14:               .string          "Collections____INITFLAG__0"
.Lgvan15:               .string          "Regions____STATIC__labels"
.Lgvan16:               .string          "Regions____INITFLAG__0"
.Lgvan17:               .string          "Storage____STATIC__labels"
.Lgvan18:               .string          "Storage____INITFLAG__0"
.Lgvan19:               .string          "Time____STATIC__lasttime"
.Lgvan20:               .string          "Time____INITFLAG__0"
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
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 21
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 21
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 3048
                        mov              rdi, rsp
                        mov              ecx, 3048
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3040], rbp
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
n00938_call_proc_staged_α:
                        mov              edi, 16
                        call             rt_proc_call_open_det0@PLT
                        test             rax, rax
                                                                                        je    .Lx00939_1
                        lea              rcx, [rip + .Lx00939_3]
                        lea              rdx, [rip + .Lx00939_4]
                                                                                        jmp   rax
.Lx00939_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00939_2
.Lx00939_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00939_2
.Lx00939_1:
                        call             rt_faildescr@PLT
.Lx00939_2:
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    n00940_proc_value_α
                                                                                        jmp   n00940_proc_value_α
n00938_call_proc_staged_β:
                                                                                        jmp   n00940_proc_value_α
.Lx00939_0:
                        .quad            .Lx00939_0_s
.Lx00939_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00940_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx00941_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n00942_proc_value_α
.Lx00941_0:
                        .quad            .Lx00941_0_s
.Lx00941_0_s:
                        .string          "define"
#-----------------------------------------------------------------------------------------------------------------------
n00942_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx00943_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n00944_proc_value_α
.Lx00943_0:
                        .quad            .Lx00943_0_s
.Lx00943_0_s:
                        .string          "generate"
#-----------------------------------------------------------------------------------------------------------------------
n00944_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx00945_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n00946_proc_value_α
.Lx00945_0:
                        .quad            .Lx00945_0_s
.Lx00945_0_s:
                        .string          "grammar"
#-----------------------------------------------------------------------------------------------------------------------
n00946_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx00947_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n00948_proc_value_α
.Lx00947_0:
                        .quad            .Lx00947_0_s
.Lx00947_0_s:
                        .string          "source"
#-----------------------------------------------------------------------------------------------------------------------
n00948_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx00949_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n00950_proc_value_α
.Lx00949_0:
                        .quad            .Lx00949_0_s
.Lx00949_0_s:
                        .string          "comment"
#-----------------------------------------------------------------------------------------------------------------------
n00950_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx00951_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n00952_proc_value_α
.Lx00951_0:
                        .quad            .Lx00951_0_s
.Lx00951_0_s:
                        .string          "prompter"
#-----------------------------------------------------------------------------------------------------------------------
n00952_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx00953_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n00954_make_list_α
.Lx00953_0:
                        .quad            .Lx00953_0_s
.Lx00953_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n00954_make_list_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2840], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 7
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00955_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00955_assign_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n00956_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00956_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1937:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1937]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n00957_var_ref_α
                                                                                        jmp   n00958_assign_α
n00956_call_builtin_icon_β:
                                                                                        jmp   n00957_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00958_assign_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00957_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00957_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n00959_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00959_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx00960_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n00961_subscript_α
.Lx00960_0:
                        .quad            .Lx00960_0_s
.Lx00960_0_s:
                        .string          "lb"
#-----------------------------------------------------------------------------------------------------------------------
n00961_subscript_α:
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2560]
                        mov              rcx, qword ptr [rbp + 2568]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00962_var_ref_α
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n00963_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00963_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx00964_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n00965_make_list_α
.Lx00964_0:
                        .quad            .Lx00964_0_s
.Lx00964_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00962_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n00966_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00965_make_list_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00967_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00966_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx00968_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00969_subscript_α
.Lx00968_0:
                        .quad            .Lx00968_0_s
.Lx00968_0_s:
                        .string          "rb"
#-----------------------------------------------------------------------------------------------------------------------
n00967_make_list_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00970_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00969_subscript_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00971_var_ref_α
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n00972_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00970_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        mov              rdx, qword ptr [rbp + 2608]
                        mov              rcx, qword ptr [rbp + 2616]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00962_var_ref_α
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00962_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00972_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx00973_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n00974_make_list_α
.Lx00973_0:
                        .quad            .Lx00973_0_s
.Lx00973_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00971_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00975_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00974_make_list_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00976_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00975_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx00977_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n00978_subscript_α
.Lx00977_0:
                        .quad            .Lx00977_0_s
.Lx00977_0_s:
                        .string          "vb"
#-----------------------------------------------------------------------------------------------------------------------
n00976_make_list_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2480]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00979_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00978_subscript_α:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00980_var_ref_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n00981_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00979_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2464]
                        mov              rcx, qword ptr [rbp + 2472]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00971_var_ref_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00971_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00981_lit_string_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              rax, qword ptr [rip + .Lx00982_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00983_make_list_α
.Lx00982_0:
                        .quad            .Lx00982_0_s
.Lx00982_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n00980_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00984_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00983_make_list_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n00985_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00984_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx00986_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n00987_subscript_α
.Lx00986_0:
                        .quad            .Lx00986_0_s
.Lx00986_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
n00985_make_list_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n00988_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00987_subscript_α:
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00989_var_ref_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n00990_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00988_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        mov              rdx, qword ptr [rbp + 2320]
                        mov              rcx, qword ptr [rbp + 2328]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00980_var_ref_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n00980_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00990_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx00991_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00992_make_list_α
.Lx00991_0:
                        .quad            .Lx00991_0_s
.Lx00991_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n00989_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n00993_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00992_make_list_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n00994_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00993_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx00995_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n00996_subscript_α
.Lx00995_0:
                        .quad            .Lx00995_0_s
.Lx00995_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00994_make_list_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n00997_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00996_subscript_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 1984]
                        mov              rcx, qword ptr [rbp + 1992]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00998_var_ref_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n00999_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00997_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00989_var_ref_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n00989_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00999_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx01000_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n01001_make_list_α
.Lx01000_0:
                        .quad            .Lx01000_0_s
.Lx01000_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00998_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n01002_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01001_make_list_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n01003_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01002_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx01004_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n01005_subscript_α
.Lx01004_0:
                        .quad            .Lx01004_0_s
.Lx01004_0_s:
                        .string          "&lcase"
#-----------------------------------------------------------------------------------------------------------------------
n01003_make_list_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n01006_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01005_subscript_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n01007_var_ref_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n01008_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n01006_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00998_var_ref_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00998_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01008_lit_charset_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              dword ptr [rbp + 1956], -1
                        mov              rax, qword ptr [rip + .Lx01009_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n01010_call_α
.Lx01009_0:
                        .quad            .Lx01009_0_s
.Lx01009_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n01007_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n01011_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01010_call_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn1997:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1997]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n01007_var_ref_α
                                                                                        jmp   n01012_make_list_α
n01010_call_β:
                                                                                        jmp   n01007_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01011_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx01013_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n01014_subscript_α
.Lx01013_0:
                        .quad            .Lx01013_0_s
.Lx01013_0_s:
                        .string          "&ucase"
#-----------------------------------------------------------------------------------------------------------------------
n01012_make_list_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n01015_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01014_subscript_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n01016_var_ref_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n01017_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n01015_make_list_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n01018_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01017_lit_charset_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              dword ptr [rbp + 1764], -1
                        mov              rax, qword ptr [rip + .Lx01019_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n01020_call_α
.Lx01019_0:
                        .quad            .Lx01019_0_s
.Lx01019_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n01016_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n01021_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01018_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n01007_var_ref_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n01007_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01020_call_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn2009:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2009]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n01016_var_ref_α
                                                                                        jmp   n01022_make_list_α
n01020_call_β:
                                                                                        jmp   n01016_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01021_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx01023_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n01024_subscript_α
.Lx01023_0:
                        .quad            .Lx01023_0_s
.Lx01023_0_s:
                        .string          "&digit"
#-----------------------------------------------------------------------------------------------------------------------
n01022_make_list_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n01025_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01024_subscript_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n01026_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n01027_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n01025_make_list_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n01028_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01027_lit_charset_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              dword ptr [rbp + 1572], -1
                        mov              rax, qword ptr [rip + .Lx01029_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n01030_call_α
.Lx01029_0:
                        .quad            .Lx01029_0_s
.Lx01029_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n01026_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n01031_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01028_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n01016_var_ref_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n01016_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01030_call_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn2021:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2021]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n01026_var_α
                                                                                        jmp   n01032_make_list_α
n01030_call_β:
                                                                                        jmp   n01026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01031_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx01033_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n01034_call_proc_staged_α
.Lx01033_0:
                        .quad            .Lx01033_0_s
.Lx01033_0_s:
                        .string          "tl+s+"
#-----------------------------------------------------------------------------------------------------------------------
n01035_disjunction_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0
                                                                                        jmp   n01036_var_ref_α
n01035_disjunction_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        jne   .Lx01037_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n01038_assign_α
.Lx01037_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01037_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n01038_assign_α
.Lx01037_1:
                                                                                        jmp   n01038_assign_α
n01035_disjunction_β:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        je    n01035_disjunction_af
                                                                                        jmp   n01035_disjunction_af
n01035_disjunction_af:
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1
                                                                                        je    n01039_lit_integer_α
                                                                                        jmp   n01040_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01032_make_list_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n01041_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01034_call_proc_staged_α:
                        lea              rsi, [rbp + 1360]
                        lea              rdx, [rbp + 1376]
                        call             proc_options_dcα
                                                                                        jmp   .Lx01042_2
.Lx01042_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n01035_disjunction_α
                                                                                        jmp   n01043_assign_α
n01034_call_proc_staged_β:
                                                                                        jmp   n01035_disjunction_α
.Lx01042_0:
                        .quad            .Lx01042_0_s
.Lx01042_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n01038_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n01040_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01036_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n01044_lit_string_α
n01036_var_ref_β:
                                                                                        jmp   n01035_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01039_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx01045_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n01035_disjunction_as
n01039_lit_integer_β:
                                                                                        jmp   n01035_disjunction_af
.Lx01045_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n01046_unop_test_α:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 99
                                                                                        je    n01035_disjunction_af
                        cmp              eax, 0
                                                                                        je    n01035_disjunction_af
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n01035_disjunction_as
n01046_unop_test_β:
                                                                                        jmp   n01035_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01041_make_list_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n01047_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01043_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n01035_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01040_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n01048_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01044_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx01049_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n01050_subscript_α
.Lx01049_0:
                        .quad            .Lx01049_0_s
.Lx01049_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n01047_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n01026_var_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n01026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01048_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx01051_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n01052_subscript_α
.Lx01051_0:
                        .quad            .Lx01051_0_s
.Lx01051_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n01050_subscript_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n01035_disjunction_af
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n01053_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01052_subscript_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n01054_var_ref_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n01055_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01053_deref_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n01035_disjunction_af
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n01046_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01055_deref_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n01054_var_ref_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n01056_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01054_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n01057_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01056_unop_test_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 99
                                                                                        je    n01054_var_ref_α
                        cmp              eax, 0
                                                                                        je    n01054_var_ref_α
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n01058_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01057_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx01059_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n01060_subscript_α
.Lx01059_0:
                        .quad            .Lx01059_0_s
.Lx01059_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n01058_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n01054_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01060_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n01061_keyword_icon_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n01062_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01062_deref_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n01061_keyword_icon_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n01063_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01061_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx01064_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n01065_lit_string_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n01066_make_list_α
n01061_keyword_icon_β:
                                                                                        jmp   n01065_lit_string_α
.Lx01064_0:
                        .quad            .Lx01064_0_s
.Lx01064_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n01063_unop_test_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 99
                                                                                        je    n01061_keyword_icon_α
                        cmp              eax, 0
                                                                                        je    n01061_keyword_icon_α
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n01067_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01066_make_list_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n01068_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01067_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 99
                                                                                        je    n01061_keyword_icon_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n01061_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01068_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n01065_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01065_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx01069_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n01070_assign_α
.Lx01069_0:
                        .quad            .Lx01069_0_s
.Lx01069_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n01070_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n01071_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01071_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n01072_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01072_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn2063:             .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2063]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n01073_call_proc_staged_α
                                                                                        jmp   n01074_assign_α
n01072_call_builtin_icon_β:
                                                                                        jmp   n01073_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01073_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx01075_2
.Lx01075_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n01073_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx01075_0:
                        .quad            .Lx01075_0_s
.Lx01075_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n01074_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n01076_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01076_disjunction_α:
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0
                                                                                        jmp   n01077_var_α
n01076_disjunction_as:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        jne   .Lx01078_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n01079_disjunction_α
.Lx01078_0:
                                                                                        jmp   n01079_disjunction_α
n01076_disjunction_β:
                        mov              eax, dword ptr [rbp + 768]
                                                                                        jmp   n01079_disjunction_α
n01076_disjunction_af:
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                                                                                        jmp   n01079_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01079_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n01080_var_α
n01079_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx01081_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n01082_assign_α
.Lx01081_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01081_1
                                                                                        jmp   n01082_assign_α
.Lx01081_1:
                                                                                        jmp   n01082_assign_α
n01079_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n01079_disjunction_af
                                                                                        jmp   n01079_disjunction_af
n01079_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n01083_goto_α
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01077_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n01085_unop_α
n01077_var_β:
                                                                                        jmp   n01076_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01086_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn2073:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2073]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n01079_disjunction_α
                                                                                        jmp   n01076_disjunction_as
n01086_call_builtin_icon_β:
                                                                                        jmp   n01079_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01082_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01080_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n01087_call_builtin_icon_α
n01080_var_β:
                                                                                        jmp   n01079_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01083_goto_α:
                                                                                        jmp   n01088_var_α
n01083_goto_β:
                                                                                        jmp   n01088_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01087_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn2078:             .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2078]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n01079_disjunction_af
                                                                                        jmp   n01079_disjunction_as
n01087_call_builtin_icon_β:
                                                                                        jmp   n01079_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01085_unop_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n01089_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n01084_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3008]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n01090_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n01088_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n01091_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01089_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx01092_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n01093_binop_test_α
.Lx01092_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n01090_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx01094_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n01095_subscript_α
.Lx01094_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n01091_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn2086:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2086]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n01071_var_α
                                                                                        jmp   n01096_conjunction_α
n01091_call_builtin_icon_β:
                                                                                        jmp   n01071_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01093_binop_test_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 100
                                                                                        je    .Lx01097_0
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 100
                                                                                        je    .Lx01097_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx01097_2
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 6
                                                                                        jne   .Lx01097_2
.Lx01097_1:
                        mov              rax, qword ptr [rbp + 872]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx
                                                                                        je    n01076_disjunction_af
                        mov              rcx, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rcx
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rcx
                                                                                        jmp   n01098_var_α
.Lx01097_0:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              r8d, 10
                        lea              r9, [rbp + 848]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx01097_1
                        cmp              eax, 1
                                                                                        je    n01076_disjunction_af
                                                                                        jmp   n01098_var_α
.Lx01097_2:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01076_disjunction_af
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n01098_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01095_subscript_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n01099_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n01100_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01096_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n01071_var_α
n01096_conjunction_β:
                                                                                        jmp   n01071_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01098_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n01086_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01100_deref_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n01099_var_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n01101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01099_var_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n01102_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n01101_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx01103_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n01104_binop_test_α
.Lx01103_0:
                        .quad            .Lx01103_0_s
.Lx01103_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n01102_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx01105_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 256]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 99
                                                                                        je    n01076_disjunction_α
                                                                                        jmp   n01106_var_α
n01102_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx01105_0
#-----------------------------------------------------------------------------------------------------------------------
n01104_binop_test_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01099_var_α
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n01107_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01106_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n01108_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n01107_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n01109_var_α
n01107_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx01110_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n01111_assign_α
.Lx01110_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01110_1
                                                                                        jmp   n01111_assign_α
.Lx01110_1:
                                                                                        jmp   n01111_assign_α
n01107_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        je    n01107_disjunction_af
                                                                                        jmp   n01107_disjunction_af
n01107_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 1
                                                                                        je    n01112_goto_α
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01108_call_value_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              qword ptr [rbp + 320], 0
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        lea              rdx, [rbp + 304]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx01113_7
                        lea              rcx, [rip + .Lx01113_3]
                        lea              rdx, [rip + .Lx01113_4]
                                                                                        jmp   rax
.Lx01113_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx01113_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx01113_2
.Lx01113_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx01113_2
.Lx01113_4:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx01113_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx01113_2
.Lx01113_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx01113_2
.Lx01113_7:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        lea              rdx, [rbp + 304]
                        mov              ecx, 1
                        lea              r8, [rbp + 320]
                        call             rt_call_value_gen_h@PLT
.Lx01113_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n01102_iterate_β
                                                                                        jmp   n01114_conjunction_α
n01108_call_value_β:
                        mov              rax, qword ptr [rbp + 320]
                        cmp              rax, 1
                                                                                        jne   .Lx01113_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx01113_8:
                        lea              rdi, [rbp + 320]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n01102_iterate_β
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n01114_conjunction_α
                                                                                        jmp   n01102_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n01111_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01109_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n01115_lit_integer_α
n01109_var_β:
                                                                                        jmp   n01107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01112_goto_α:
                                                                                        jmp   n01099_var_α
n01112_goto_β:
                                                                                        jmp   n01099_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01116_binop_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n01107_disjunction_as
n01116_binop_β:
                                                                                        jmp   n01107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01114_conjunction_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n01076_disjunction_α
n01114_conjunction_β:
                                                                                        jmp   n01076_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01115_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx01117_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n01118_lit_integer_α
.Lx01117_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n01118_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx01119_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n01120_subscript_α
.Lx01119_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n01120_subscript_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        mov              r8, qword ptr [rbp + 576]
                        mov              r9, qword ptr [rbp + 584]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n01107_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n01121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01121_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n01122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01122_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn2115:             .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2115]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n01107_disjunction_af
                                                                                        jmp   n01116_binop_α
n01122_call_builtin_icon_β:
                                                                                        jmp   n01107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3040]
                        add              rsp, 3048
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3040]
                        add              rsp, 3048
                        ret
                        .section         .note.GNU-stack,"",@progbits
