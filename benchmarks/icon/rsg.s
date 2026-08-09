                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_alts_α
proc_alts_α:
                        sub              rsp, 576
                        mov              qword ptr [rsp + 552], rcx
                        mov              qword ptr [rsp + 560], rdx
                        mov              qword ptr [rsp + 568], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 544
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
                        mov              rdi, qword ptr [rbp + 464]                     # lo
                        mov              rsi, qword ptr [rbp + 472]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n15_lit_charset_α
n5_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx30_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n6_scan_tab_α
.Lx30_0:
                        cmp              eax, 1
                                                                                        jne   .Lx30_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n6_scan_tab_α
.Lx30_1:
                                                                                        jmp   n6_scan_tab_α
n5_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        je    n16_scan_upto_β
                                                                                        jmp   n5_disjunction_af
n5_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 1
                                                                                        je    n14_lit_integer_α
                                                                                        jmp   n17_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 296]
                        cmp              rax, 1
                                                                                        jge   .Lx32_0
                        add              rax, r15
                        add              rax, 1
.Lx32_0:
                        cmp              rax, 1
                                                                                        jge   .Lx32_239
                        add              rsp, 16
                                                                                        jmp   n5_disjunction_β
.Lx32_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx32_240
                        add              rsp, 16
                                                                                        jmp   n5_disjunction_β
.Lx32_240:
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
                                                                                        jmp   n7_call_proc_staged_α
n6_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n5_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n7_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 256]
                        call             proc_syms_dcα
                                                                                        jmp   .Lx34_2
.Lx34_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n5_disjunction_β
                                                                                        jmp   n8_call_builtin_icon_α
n7_call_proc_staged_β:
                                                                                        jmp   n5_disjunction_β
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "syms"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn36:               .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn36]                          # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n5_disjunction_β
                                                                                        jmp   n9_disjunction_α
n8_call_builtin_icon_β:
                                                                                        jmp   n5_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n9_disjunction_α:
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0
                                                                                        jmp   n12_lit_integer_α
n9_disjunction_as:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        jne   .Lx38_0
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n4_var_α
.Lx38_0:
                        cmp              eax, 1
                                                                                        jne   .Lx38_1
                                                                                        jmp   n4_var_α
.Lx38_1:
                                                                                        jmp   n4_var_α
n9_disjunction_β:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        je    n9_disjunction_af
                                                                                        jmp   n9_disjunction_af
n9_disjunction_af:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 1
                                                                                        je    n10_goto_α
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_goto_α:
                                                                                        jmp   n11_scan_α
n10_goto_β:
                                                                                        jmp   n11_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n18_var_α
n11_scan_β:
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n13_scan_move_α
n12_lit_integer_β:
                                                                                        jmp   n9_disjunction_af
.Lx42_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx44_239
                        add              rsp, 16
                                                                                        jmp   n9_disjunction_af
.Lx44_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx44_240
                        add              rsp, 16
                                                                                        jmp   n9_disjunction_af
.Lx44_240:
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
                                                                                        jmp   n9_disjunction_as
n13_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n9_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n5_disjunction_as
n14_lit_integer_β:
                                                                                        jmp   n5_disjunction_af
.Lx45_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_charset_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], -1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n16_scan_upto_α
n15_lit_charset_β:
                                                                                        jmp   n5_disjunction_af
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n16_scan_upto_α:
                        mov              qword ptr [rbp + 336], r14
.Lx48_0:
                        mov              rax, qword ptr [rbp + 336]
                        cmp              rax, r15
                                                                                        jge   n5_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx48_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx48_1
                        mov              qword ptr [rbp + 320], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n5_disjunction_as
.Lx48_1:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx48_0
n16_scan_upto_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx48_0
.Lx48_2:
                        .quad            .Lx48_2_s
.Lx48_2_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n18_var_α
n17_scan_β:
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n19_return_α
#-----------------------------------------------------------------------------------------------------------------------
n19_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_alts_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_β:
                                                                                        jmp   proc_alts_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 576]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, qword ptr [rbp + 568]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_ω:
                        lea              rsp, [rbp + 576]
                        mov              rcx, qword ptr [rbp + 560]
                        mov              rbp, qword ptr [rbp + 568]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_alts_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx54_2]
                        lea              rdx, [rip + .Lx54_3]
                                                                                        jmp   proc_alts_α
.Lx54_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx54_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_comment_α
proc_comment_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 176
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jmp   proc_comment_γ
.Lx64_0:
                                                                                        jmp   proc_comment_γ
n55_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_comment_ω
n55_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_comment_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n57_lit_integer_α
n56_var_ref_β:
                                                                                        jmp   n55_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n58_subscript_α
.Lx67_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:
                        mov              rdi, qword ptr [rbp + 80]                      # base
                        mov              rsi, qword ptr [rbp + 88]                      # base
                        mov              rdx, qword ptr [rbp + 96]                      # idx
                        mov              rcx, qword ptr [rbp + 104]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n55_disjunction_af
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n59_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_deref_α:
                        mov              rdi, qword ptr [rbp + 112]                     # d
                        mov              rsi, qword ptr [rbp + 120]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n55_disjunction_af
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n61_binop_test_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "#"
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_test_α:
                        mov              rdi, qword ptr [rbp + 128]                     # lhs
                        mov              rsi, qword ptr [rbp + 136]                     # lhs
                        mov              rdx, qword ptr [rbp + 144]                     # rhs
                        mov              rcx, qword ptr [rbp + 152]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n55_disjunction_af
                        mov              rdi, qword ptr [rbp + 144]                     # d
                        mov              rsi, qword ptr [rbp + 152]                     # d
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 208]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_ω:
                        lea              rsp, [rbp + 208]
                        mov              rcx, qword ptr [rbp + 192]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_comment_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx73_2]
                        lea              rdx, [rip + .Lx73_3]
                                                                                        jmp   proc_comment_α
.Lx73_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx73_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_define_α
proc_define_α:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rcx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 528
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                        mov              rdi, qword ptr [rbp + 496]                     # lo
                        mov              rsi, qword ptr [rbp + 504]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
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
                        mov              qword ptr [rbp + 256], 3
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
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 4
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
                                                                                        jg    n94_scan_α
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
                        mov              qword ptr [rbp + 176], 3
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
                                                                                        jmp   n94_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]                     # base
                        mov              rsi, qword ptr [rbp + 120]                     # base
                        mov              rdx, qword ptr [rbp + 144]                     # idx
                        mov              rcx, qword ptr [rbp + 152]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n81_scan_find_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
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
                        mov              qword ptr [rbp + 432], 3                       # result
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
                        cmp              eax, 104
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
                        mov              rdi, qword ptr [rbp + 304]                     # var
                        mov              rsi, qword ptr [rbp + 312]                     # var
                        mov              rdx, qword ptr [rbp + 352]                     # val
                        mov              rcx, qword ptr [rbp + 360]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n94_scan_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n92_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n92_scan_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 48]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   n93_return_α
n92_scan_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_define_γ
#-----------------------------------------------------------------------------------------------------------------------
n94_scan_α:
                        lea              rdi, [rbp + 48]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 48]
                        mov              r14, qword ptr [rbp + 56]
                        mov              r15, qword ptr [rbp + 64]
                                                                                        jmp   proc_define_ω
n94_scan_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_define_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_define_β:
                                                                                        jmp   proc_define_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_define_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 560]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              rbp, qword ptr [rbp + 552]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_define_ω:
                        lea              rsp, [rbp + 560]
                        mov              rcx, qword ptr [rbp + 544]
                        mov              rbp, qword ptr [rbp + 552]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_define_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00012_2]
                        lea              rdx, [rip + .Lx00012_3]
                                                                                        jmp   proc_define_α
.Lx00012_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00012_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_defnon_α
proc_defnon_α:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 608
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jmp   proc_defnon_γ
.Lx00015_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00015_1
                                                                                        jmp   proc_defnon_γ
.Lx00015_1:
                                                                                        jmp   proc_defnon_γ
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
n00016_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00017_call_α
n00016_var_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
n00017_call_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn156:              .string          "nonterm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    proc_defnon_ω
                                                                                        jmp   n00018_return_α
n00017_call_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
n00018_return_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_defnon_γ
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00019_scan_enter_α
n00014_var_β:
                                                                                        jmp   n00013_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00019_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 496]                     # lo
                        mov              rsi, qword ptr [rbp + 504]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00020_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 1
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00022_scan_match_α
.Lx00021_0:
                        .quad            .Lx00021_0_s
.Lx00021_0_s:
                        .string          "'"
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
                        mov              qword ptr [rbp + 448], 3
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
n00027_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
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
.Lrkfn171:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
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
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
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
                        mov              qword ptr [rbp + 256], 3
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
                        lea              rdi, [rbp + 144]                               # out3
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
.Lrkfn184:              .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]                         # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
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
n00024_scan_α:
                        lea              rdi, [rbp + 144]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   n00013_disjunction_af
n00024_scan_β:
                                                                                        jmp   n00013_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_β:
                                                                                        jmp   proc_defnon_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 640]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rbp, qword ptr [rbp + 632]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_ω:
                        lea              rsp, [rbp + 640]
                        mov              rcx, qword ptr [rbp + 624]
                        mov              rbp, qword ptr [rbp + 632]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_defnon_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00044_2]
                        lea              rdx, [rip + .Lx00044_3]
                                                                                        jmp   proc_defnon_α
.Lx00044_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00044_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_error_α
proc_error_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 144
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_error_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_string_α:
                        mov              qword ptr [rbp + 96], 2                        # result
                        mov              dword ptr [rbp + 100], 21
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
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn197:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 176]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_error_ω:
                        lea              rsp, [rbp + 176]
                        mov              rcx, qword ptr [rbp + 160]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_error_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00050_2]
                        lea              rdx, [rip + .Lx00050_3]
                                                                                        jmp   proc_error_α
.Lx00050_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00050_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gener_α
proc_gener_α:
                        sub              rsp, 1808
                        mov              qword ptr [rsp + 1784], rcx
                        mov              qword ptr [rsp + 1792], rdx
                        mov              qword ptr [rsp + 1800], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1776
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
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
                        lea              rdi, [rip + .Lrkfn272]                         # fn
                        lea              rsi, [rbp + 1664]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                                                                                        jmp   n00054_make_list_α
n00052_call_β:
                                                                                        jmp   n00053_var_α
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
                                                                                        jmp   n00055_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_assign_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00056_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn279:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00057_call_builtin_icon_α
                                                                                        jmp   n00058_assign_α
n00056_call_builtin_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
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
n00060_var_α:
                        mov              rax, qword ptr [1879052368]                    # tswitch
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1600], rax                    # result
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n00063_unop_test_α
n00060_var_β:
                                                                                        jmp   n00059_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00063_unop_test_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 104
                                                                                        je    n00059_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00059_disjunction_af
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00064_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00065_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00066_var_α
n00064_keyword_icon_β:
                                                                                        jmp   n00062_var_α
.Lx00065_0:
                        .quad            .Lx00065_0_s
.Lx00065_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00067_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00067_call_proc_staged_α:
                        lea              rsi, [rbp + 1504]
                        call             proc_symimage_dcα
                                                                                        jmp   .Lx00068_2
.Lx00068_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                                                                                        jmp   n00069_var_α
n00067_call_proc_staged_β:
                                                                                        jmp   n00062_var_α
.Lx00068_0:
                        .quad            .Lx00068_0_s
.Lx00068_0_s:
                        .string          "symimage"
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n00070_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_call_proc_staged_α:
                        lea              rsi, [rbp + 1568]
                        call             proc_listimage_dcα
                                                                                        jmp   .Lx00071_2
.Lx00071_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                                                                                        jmp   n00072_call_builtin_icon_α
n00070_call_proc_staged_β:
                                                                                        jmp   n00062_var_α
.Lx00071_0:
                        .quad            .Lx00071_0_s
.Lx00071_0_s:
                        .string          "listimage"
#-----------------------------------------------------------------------------------------------------------------------
n00072_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn295:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]                         # fn
                        lea              rsi, [rbp + 1360]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                                                                                        jmp   n00059_disjunction_as
n00072_call_builtin_icon_β:
                                                                                        jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00073_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn299:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                                                                                        jmp   n00074_lit_string_α
n00073_call_builtin_icon_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 6
                        mov              rax, qword ptr [rip + .Lx00075_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00076_call_builtin_α
.Lx00075_0:
                        .quad            .Lx00075_0_s
.Lx00075_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00076_call_builtin_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn302:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]                         # fn
                        lea              rsi, [rbp + 1264]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n00077_lit_string_α
                                                                                        jmp   n00078_var_α
n00076_call_builtin_β:
                                                                                        jmp   n00077_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00079_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn306:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]                         # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                                                                                        jmp   n00080_assign_α
n00079_call_builtin_icon_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 7
                        mov              rax, qword ptr [rip + .Lx00082_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00083_call_builtin_α
.Lx00082_0:
                        .quad            .Lx00082_0_s
.Lx00082_0_s:
                        .string          "charset"
#-----------------------------------------------------------------------------------------------------------------------
n00083_call_builtin_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn310:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]                         # fn
                        lea              rsi, [rbp + 1120]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n00084_lit_string_α
                                                                                        jmp   n00085_var_α
n00083_call_builtin_β:
                                                                                        jmp   n00084_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00086_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00087_0]                # fname
                        mov              rsi, qword ptr [rbp + 1072]                    # obj
                        mov              rdx, qword ptr [rbp + 1080]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n00088_random_α
.Lx00087_0:
                        .quad            .Lx00087_0_s
.Lx00087_0_s:
                        .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
n00088_random_α:
                        mov              rdi, qword ptr [rbp + 1056]                    # base
                        mov              rsi, qword ptr [rbp + 1064]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00089_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_deref_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # d
                        mov              rsi, qword ptr [rbp + 1048]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00090_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn317:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn317]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                                                                                        jmp   n00091_assign_α
n00090_call_builtin_icon_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 7
                        mov              rax, qword ptr [rip + .Lx00092_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00093_call_builtin_α
.Lx00092_0:
                        .quad            .Lx00092_0_s
.Lx00092_0_s:
                        .string          "nonterm"
#-----------------------------------------------------------------------------------------------------------------------
n00093_call_builtin_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn321:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]                         # fn
                        lea              rsi, [rbp + 928]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n00053_var_α
                                                                                        jmp   n00094_disjunction_α
n00093_call_builtin_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n00095_var_ref_α
n00094_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx00096_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00097_assign_α
.Lx00096_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00096_1
                                                                                        jmp   n00097_assign_α
.Lx00096_1:
                                                                                        jmp   n00097_assign_α
n00094_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n00094_disjunction_af
                                                                                        jmp   n00094_disjunction_af
n00094_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n00098_keyword_icon_α
                                                                                        jmp   n00099_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00099_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n00100_var_α
n00099_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx00101_0
                                                                                        jmp   n00102_conjunction_α
.Lx00101_0:
                                                                                        jmp   n00102_conjunction_α
n00099_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n00053_var_α
n00099_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_conjunction_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00103_assign_α
n00102_conjunction_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00104_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00053_var_α
n00104_conjunction_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_conjunction_α:
                                                                                        jmp   n00099_disjunction_as
n00105_conjunction_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00106_unop_α
n00100_var_β:
                                                                                        jmp   n00099_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00106_unop_α:
                        mov              rdi, qword ptr [rbp + 1728]                    # lo
                        mov              rsi, qword ptr [rbp + 1736]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:
                        mov              rax, qword ptr [1879052336]                    # limit
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 496], rax                     # result
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00108_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_unop_test_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 104
                                                                                        je    n00099_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00099_disjunction_af
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00109_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_binop_test_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 112
                                                                                        je    .Lx00110_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 112
                                                                                        je    .Lx00110_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx00110_2
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx00110_2
.Lx00110_1:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jle   n00099_disjunction_af
                        mov              rcx, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rcx
                        mov              rcx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rcx
                                                                                        jmp   n00111_keyword_icon_α
.Lx00110_0:
                        mov              rdi, qword ptr [rbp + 448]                     # a
                        mov              rsi, qword ptr [rbp + 456]                     # a
                        mov              rdx, qword ptr [rbp + 480]                     # b
                        mov              rcx, qword ptr [rbp + 488]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 432]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00110_1
                        cmp              eax, 1
                                                                                        je    n00099_disjunction_af
                                                                                        jmp   n00111_keyword_icon_α
.Lx00110_2:
                        mov              rdi, qword ptr [rbp + 448]                     # lhs
                        mov              rsi, qword ptr [rbp + 456]                     # lhs
                        mov              rdx, qword ptr [rbp + 480]                     # rhs
                        mov              rcx, qword ptr [rbp + 488]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00099_disjunction_af
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00111_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00112_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00057_call_builtin_icon_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00113_lit_string_α
n00111_keyword_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
.Lx00112_0:
                        .quad            .Lx00112_0_s
.Lx00112_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00113_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 31
                        mov              rax, qword ptr [rip + .Lx00114_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00115_call_builtin_icon_α
.Lx00114_0:
                        .quad            .Lx00114_0_s
.Lx00114_0_s:
                        .string          "*** excessive symbols remaining"
#-----------------------------------------------------------------------------------------------------------------------
n00115_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn342:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n00057_call_builtin_icon_α
                                                                                        jmp   n00057_call_builtin_icon_α
n00115_call_builtin_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_goto_α:
                                                                                        jmp   n00057_call_builtin_icon_α
n00116_goto_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_conjunction_α:
                                                                                        jmp   n00094_disjunction_as
n00117_conjunction_β:
                                                                                        jmp   n00094_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00098_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00118_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00057_call_builtin_icon_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00119_lit_string_α
n00098_keyword_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
.Lx00118_0:
                        .quad            .Lx00118_0_s
.Lx00118_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00119_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 29
                        mov              rax, qword ptr [rip + .Lx00120_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00121_var_α
.Lx00120_0:
                        .quad            .Lx00120_0_s
.Lx00120_0_s:
                        .string          "*** undefined nonterminal:  <"
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00122_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00122_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00123_0]                # fname
                        mov              rsi, qword ptr [rbp + 880]                     # obj
                        mov              rdx, qword ptr [rbp + 888]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00057_call_builtin_icon_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00124_lit_string_α
.Lx00123_0:
                        .quad            .Lx00123_0_s
.Lx00123_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Lx00125_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00126_call_builtin_icon_α
.Lx00125_0:
                        .quad            .Lx00125_0_s
.Lx00125_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn352:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]                         # fn
                        lea              rsi, [rbp + 736]                               # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n00057_call_builtin_icon_α
                                                                                        jmp   n00057_call_builtin_icon_α
n00126_call_builtin_icon_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_goto_α:
                                                                                        jmp   n00057_call_builtin_icon_α
n00127_goto_β:
                                                                                        jmp   n00057_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00128_var_α
n00095_var_ref_β:
                                                                                        jmp   n00094_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00128_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00129_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00130_0]                # fname
                        mov              rsi, qword ptr [rbp + 624]                     # obj
                        mov              rdx, qword ptr [rbp + 632]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00094_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00131_subscript_α
.Lx00130_0:
                        .quad            .Lx00130_0_s
.Lx00130_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n00131_subscript_α:
                        mov              rdi, qword ptr [rbp + 592]                     # base
                        mov              rsi, qword ptr [rbp + 600]                     # base
                        mov              rdx, qword ptr [rbp + 608]                     # idx
                        mov              rcx, qword ptr [rbp + 616]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00094_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00132_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_deref_α:
                        mov              rdi, qword ptr [rbp + 640]                     # d
                        mov              rsi, qword ptr [rbp + 648]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00094_disjunction_af
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00133_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_unop_test_α:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 104
                                                                                        je    n00094_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00094_disjunction_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00134_random_α
#-----------------------------------------------------------------------------------------------------------------------
n00134_random_α:
                        mov              rdi, qword ptr [rbp + 576]                     # base
                        mov              rsi, qword ptr [rbp + 584]                     # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n00094_disjunction_af
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00135_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_deref_α:
                        mov              rdi, qword ptr [rbp + 560]                     # d
                        mov              rsi, qword ptr [rbp + 568]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00094_disjunction_af
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00137_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00137_binop_α:
                        mov              rdi, qword ptr [rbp + 672]                     # a
                        mov              rsi, qword ptr [rbp + 680]                     # a
                        mov              rdx, qword ptr [rbp + 1728]                    # b
                        mov              rcx, qword ptr [rbp + 1736]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00094_disjunction_as
n00137_binop_β:
                                                                                        jmp   n00094_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00057_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn368:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_gener_ω
                                                                                        jmp   proc_gener_γ
n00057_call_builtin_icon_β:
                                                                                        jmp   proc_gener_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_β:
                                                                                        jmp   proc_gener_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              rbp, qword ptr [rbp + 1800]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_ω:
                        lea              rsp, [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1792]
                        mov              rbp, qword ptr [rbp + 1800]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gener_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00138_2]
                        lea              rdx, [rip + .Lx00138_3]
                                                                                        jmp   proc_gener_α
.Lx00138_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00138_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_generate_α
proc_generate_α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jmp   proc_generate_γ
.Lx00141_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00141_1
                                                                                        jmp   proc_generate_γ
.Lx00141_1:
                                                                                        jmp   proc_generate_γ
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
n00142_conjunction_α:
                                                                                        jmp   n00139_disjunction_as
n00142_conjunction_β:
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00140_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00143_scan_enter_α
n00140_var_β:
                                                                                        jmp   n00139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00143_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 832]                     # lo
                        mov              rsi, qword ptr [rbp + 840]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 1
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
                        mov              qword ptr [rbp + 784], 3
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
n00151_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00152_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00153_lit_charset_α
.Lx00152_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00153_lit_charset_α:
                        mov              qword ptr [rbp + 736], 2                       # result
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
                        mov              qword ptr [rbp + 704], 3
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
                        mov              qword ptr [rbp + 592], 3                       # result
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
n00171_conjunction_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00172_scan_α
n00171_conjunction_β:
                                                                                        jmp   n00148_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00172_scan_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 272]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 272]
                        mov              r14, qword ptr [rbp + 280]
                        mov              r15, qword ptr [rbp + 288]
                                                                                        jmp   n00173_lit_integer_α
n00172_scan_β:
                                                                                        jmp   n00139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00173_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00174_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00175_var_α
.Lx00174_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00176_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00176_to_α:
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]                     # v
                        mov              rsi, qword ptr [rbp + 136]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx00177_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jg    n00178_return_α
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00179_bound_α
n00176_to_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx00177_0
#-----------------------------------------------------------------------------------------------------------------------
n00179_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n00180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        call             proc_gener_dcα
                                                                                        jmp   .Lx00182_2
.Lx00182_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n00183_unmark_α
                                                                                        jmp   n00183_unmark_α
n00181_call_proc_staged_β:
                                                                                        jmp   n00183_unmark_α
.Lx00182_0:
                        .quad            .Lx00182_0_s
.Lx00182_0_s:
                        .string          "gener"
#-----------------------------------------------------------------------------------------------------------------------
n00183_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n00176_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00178_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_generate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00170_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00184_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00185_scan_tab_α
n00170_lit_integer_β:
                                                                                        jmp   n00165_disjunction_af
.Lx00184_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00185_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00186_0
                        add              rax, r15
                        add              rax, 1
.Lx00186_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00186_239
                        add              rsp, 16
                                                                                        jmp   n00165_disjunction_af
.Lx00186_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00186_240
                        add              rsp, 16
                                                                                        jmp   n00165_disjunction_af
.Lx00186_240:
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
                                                                                        jmp   n00187_call_builtin_icon_α
n00185_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00187_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn455:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n00165_disjunction_af
                                                                                        jmp   n00165_disjunction_as
n00187_call_builtin_icon_β:
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00169_goto_α:
                                                                                        jmp   n00165_disjunction_af
n00169_goto_β:
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00188_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00189_scan_pos_α
n00166_lit_integer_β:
                                                                                        jmp   n00165_disjunction_af
.Lx00188_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00189_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00190_0
                        add              rax, r15
                        add              rax, 1
.Lx00190_0:
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
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00191_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00192_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00193_conjunction_α
.Lx00192_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00193_conjunction_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00165_disjunction_as
n00193_conjunction_β:
                                                                                        jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00148_scan_α:
                        lea              rdi, [rbp + 272]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 272]
                        mov              r14, qword ptr [rbp + 280]
                        mov              r15, qword ptr [rbp + 288]
                                                                                        jmp   n00139_disjunction_af
n00148_scan_β:
                                                                                        jmp   n00139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_β:
                                                                                        jmp   proc_generate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_generate_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00194_2]
                        lea              rdx, [rip + .Lx00194_3]
                                                                                        jmp   proc_generate_α
.Lx00194_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00194_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_getrhs_α
proc_getrhs_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 320
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_getrhs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00195_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 0
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
n00200_iterate_α:
                        mov              qword ptr [rbp + 224], 0
.Lx00201_0:
                        mov              rdi, qword ptr [rbp + 240]                     # obj
                        mov              rsi, qword ptr [rbp + 248]                     # obj
                        mov              rdx, qword ptr [rbp + 224]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              rax, 104
                                                                                        je    n00202_var_α
                                                                                        jmp   n00203_call_proc_staged_α
n00200_iterate_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx00201_0
#-----------------------------------------------------------------------------------------------------------------------
n00203_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        call             proc_listimage_dcα
                                                                                        jmp   .Lx00204_2
.Lx00204_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00200_iterate_β
                                                                                        jmp   n00205_lit_string_α
n00203_call_proc_staged_β:
                                                                                        jmp   n00200_iterate_β
.Lx00204_0:
                        .quad            .Lx00204_0_s
.Lx00204_0_s:
                        .string          "listimage"
#-----------------------------------------------------------------------------------------------------------------------
n00205_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Lx00206_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00207_binop_α
.Lx00206_0:
                        .quad            .Lx00206_0_s
.Lx00206_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n00207_binop_α:
                        mov              rdi, qword ptr [rbp + 160]                     # a
                        mov              rsi, qword ptr [rbp + 168]                     # a
                        mov              rdx, qword ptr [rbp + 256]                     # b
                        mov              rcx, qword ptr [rbp + 264]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00208_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00208_binop_α:
                        mov              rdi, qword ptr [rbp + 288]                     # a
                        mov              rsi, qword ptr [rbp + 296]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n00209_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00200_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00210_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00210_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00211_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00212_lit_integer_α
.Lx00211_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00212_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00213_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00214_subscript_α
.Lx00213_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00214_subscript_α:
                        mov              rdi, qword ptr [rbp + 48]                      # arr
                        mov              rsi, qword ptr [rbp + 56]                      # arr
                        mov              rdx, qword ptr [rbp + 64]                      # i
                        mov              rcx, qword ptr [rbp + 72]                      # i
                        mov              r8, qword ptr [rbp + 80]                       # j
                        mov              r9, qword ptr [rbp + 88]                       # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    proc_getrhs_ω
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00215_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00215_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getrhs_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_β:
                                                                                        jmp   proc_getrhs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 352]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_ω:
                        lea              rsp, [rbp + 352]
                        mov              rcx, qword ptr [rbp + 336]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_getrhs_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00216_2]
                        lea              rdx, [rip + .Lx00216_3]
                                                                                        jmp   proc_getrhs_α
.Lx00216_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00216_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_grammar_α
proc_grammar_α:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              qword ptr [rsp + 1464], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1440
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jmp   proc_grammar_γ
.Lx00219_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00219_1
                                                                                        jmp   proc_grammar_γ
.Lx00219_1:
                                                                                        jmp   proc_grammar_γ
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
n00220_conjunction_α:
                                                                                        jmp   n00217_disjunction_as
n00220_conjunction_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00221_scan_enter_α
n00218_var_β:
                                                                                        jmp   n00217_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00221_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1360]                    # lo
                        mov              rsi, qword ptr [rbp + 1368]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_lit_string_α:
                        mov              qword ptr [rbp + 1344], 2                      # result
                        mov              dword ptr [rbp + 1348], 2
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
                        mov              qword ptr [rbp + 1312], 3
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
                        mov              qword ptr [rbp + 1264], 3                      # result
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
                        mov              qword ptr [rbp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n00236_scan_tab_α
.Lx00235_0:
                        .quad            0
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
n00244_conjunction_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00245_scan_α
n00244_conjunction_β:
                                                                                        jmp   n00226_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_scan_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 656]
                        mov              r14, qword ptr [rbp + 664]
                        mov              r15, qword ptr [rbp + 672]
                                                                                        jmp   n00246_disjunction_α
n00245_scan_β:
                                                                                        jmp   n00217_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00246_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n00247_var_α
n00246_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx00248_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00249_var_α
.Lx00248_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00248_1
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00249_var_α
.Lx00248_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00248_2
                                                                                        jmp   n00249_var_α
.Lx00248_2:
                                                                                        jmp   n00249_var_α
n00246_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n00246_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00250_goto_β
                                                                                        jmp   n00246_disjunction_af
n00246_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n00251_var_ref_α
                        cmp              eax, 2
                                                                                        je    proc_grammar_ω
                                                                                        jmp   n00249_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_var_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00253_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_call_proc_staged_α:
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 320]
                        call             proc_pwrite_dcα
                                                                                        jmp   .Lx00254_2
.Lx00254_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n00255_disjunction_α
                                                                                        jmp   n00255_disjunction_α
n00253_call_proc_staged_β:
                                                                                        jmp   n00255_disjunction_α
.Lx00254_0:
                        .quad            .Lx00254_0_s
.Lx00254_0_s:
                        .string          "pwrite"
#-----------------------------------------------------------------------------------------------------------------------
n00255_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n00256_var_α
n00255_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx00257_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00258_return_α
.Lx00257_0:
                                                                                        jmp   n00258_return_α
n00255_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                                                                                        jmp   n00258_return_α
n00255_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                                                                                        jmp   n00258_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00259_unop_α
n00256_var_β:
                                                                                        jmp   n00255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00259_unop_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # lo
                        mov              rsi, qword ptr [rbp + 1400]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00260_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00261_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00262_binop_test_α
.Lx00261_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00262_binop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 112
                                                                                        je    .Lx00263_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 112
                                                                                        je    .Lx00263_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx00263_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx00263_2
.Lx00263_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx
                                                                                        je    n00255_disjunction_af
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n00264_var_α
.Lx00263_0:
                        mov              rdi, qword ptr [rbp + 192]                     # a
                        mov              rsi, qword ptr [rbp + 200]                     # a
                        mov              rdx, qword ptr [rbp + 224]                     # b
                        mov              rcx, qword ptr [rbp + 232]                     # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 176]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00263_1
                        cmp              eax, 1
                                                                                        je    n00255_disjunction_af
                                                                                        jmp   n00264_var_α
.Lx00263_2:
                        mov              rdi, qword ptr [rbp + 192]                     # lhs
                        mov              rsi, qword ptr [rbp + 200]                     # lhs
                        mov              rdx, qword ptr [rbp + 224]                     # rhs
                        mov              rcx, qword ptr [rbp + 232]                     # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00255_disjunction_af
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00264_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00265_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn607:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]                         # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n00258_return_α
                                                                                        jmp   n00255_disjunction_as
n00265_call_builtin_icon_β:
                                                                                        jmp   n00258_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00258_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_grammar_γ
#-----------------------------------------------------------------------------------------------------------------------
n00251_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00266_lit_integer_α
n00251_var_ref_β:
                                                                                        jmp   n00246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00266_lit_integer_α:
                        mov              qword ptr [rbp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00267_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00268_subscript_α
.Lx00267_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00268_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]                     # base
                        mov              rsi, qword ptr [rbp + 568]                     # base
                        mov              rdx, qword ptr [rbp + 576]                     # idx
                        mov              rcx, qword ptr [rbp + 584]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00246_disjunction_af
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00269_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00269_deref_α:
                        mov              rdi, qword ptr [rbp + 592]                     # d
                        mov              rsi, qword ptr [rbp + 600]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00246_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00270_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx00271_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00272_binop_test_α
.Lx00271_0:
                        .quad            .Lx00271_0_s
.Lx00271_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00272_binop_test_α:
                        mov              rdi, qword ptr [rbp + 608]                     # lhs
                        mov              rsi, qword ptr [rbp + 616]                     # lhs
                        mov              rdx, qword ptr [rbp + 624]                     # rhs
                        mov              rcx, qword ptr [rbp + 632]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00246_disjunction_af
                        mov              rdi, qword ptr [rbp + 624]                     # d
                        mov              rsi, qword ptr [rbp + 632]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00273_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00274_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00274_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00275_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00276_subscript_α
.Lx00275_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00276_subscript_α:
                        mov              rdi, qword ptr [rbp + 464]                     # base
                        mov              rsi, qword ptr [rbp + 472]                     # base
                        mov              rdx, qword ptr [rbp + 480]                     # idx
                        mov              rcx, qword ptr [rbp + 488]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00246_disjunction_af
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00277_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00277_deref_α:
                        mov              rdi, qword ptr [rbp + 496]                     # d
                        mov              rsi, qword ptr [rbp + 504]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00246_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n00278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx00279_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00280_binop_test_α
.Lx00279_0:
                        .quad            .Lx00279_0_s
.Lx00279_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00280_binop_test_α:
                        mov              rdi, qword ptr [rbp + 512]                     # lhs
                        mov              rsi, qword ptr [rbp + 520]                     # lhs
                        mov              rdx, qword ptr [rbp + 528]                     # rhs
                        mov              rcx, qword ptr [rbp + 536]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00246_disjunction_af
                        mov              rdi, qword ptr [rbp + 528]                     # d
                        mov              rsi, qword ptr [rbp + 536]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00281_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_conjunction_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00246_disjunction_as
n00281_conjunction_β:
                                                                                        jmp   n00246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00250_goto_α:
                                                                                        jmp   n00246_disjunction_af
n00250_goto_β:
                                                                                        jmp   n00246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00247_var_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00282_unop_α
n00247_var_β:
                                                                                        jmp   n00246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00282_unop_α:
                        mov              rdi, qword ptr [rbp + 1408]                    # lo
                        mov              rsi, qword ptr [rbp + 1416]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00283_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00284_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00285_binop_test_α
.Lx00284_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00285_binop_test_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 112
                                                                                        je    .Lx00286_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 112
                                                                                        je    .Lx00286_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx00286_2
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx00286_2
.Lx00286_1:
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, qword ptr [rbp + 424]
                        cmp              rax, rcx
                                                                                        jne   n00246_disjunction_af
                        mov              rcx, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rcx
                        mov              rcx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rcx
                                                                                        jmp   n00246_disjunction_as
.Lx00286_0:
                        mov              rdi, qword ptr [rbp + 384]                     # a
                        mov              rsi, qword ptr [rbp + 392]                     # a
                        mov              rdx, qword ptr [rbp + 416]                     # b
                        mov              rcx, qword ptr [rbp + 424]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 368]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00286_1
                        cmp              eax, 1
                                                                                        je    n00246_disjunction_af
                                                                                        jmp   n00246_disjunction_as
.Lx00286_2:
                        mov              rdi, qword ptr [rbp + 384]                     # lhs
                        mov              rsi, qword ptr [rbp + 392]                     # lhs
                        mov              rdx, qword ptr [rbp + 416]                     # rhs
                        mov              rcx, qword ptr [rbp + 424]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00246_disjunction_af
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00246_disjunction_as
n00285_binop_test_β:
                                                                                        jmp   n00246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00243_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n00287_var_α
n00243_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx00288_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00239_disjunction_as
.Lx00288_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00288_1
                                                                                        jmp   n00239_disjunction_as
.Lx00288_1:
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
                                                                                        je    n00289_keyword_icon_α
                                                                                        jmp   n00226_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_conjunction_α:
                                                                                        jmp   n00243_disjunction_as
n00290_conjunction_β:
                                                                                        jmp   n00243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00289_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00291_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    proc_grammar_ω
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00292_lit_string_α
n00289_keyword_icon_β:
                                                                                        jmp   proc_grammar_ω
.Lx00291_0:
                        .quad            .Lx00291_0_s
.Lx00291_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00292_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 16
                        mov              rax, qword ptr [rip + .Lx00293_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00294_var_α
.Lx00293_0:
                        .quad            .Lx00293_0_s
.Lx00293_0_s:
                        .string          "*** cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00295_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn638:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn638]                         # fn
                        lea              rsi, [rbp + 1040]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    proc_grammar_ω
                                                                                        jmp   proc_grammar_ω
n00295_call_builtin_icon_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00296_lit_string_α
n00287_var_β:
                                                                                        jmp   n00243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00296_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Lx00297_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00298_call_builtin_icon_α
.Lx00297_0:
                        .quad            .Lx00297_0_s
.Lx00297_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n00298_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn643:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn643]                         # fn
                        lea              rsi, [rbp + 928]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n00243_disjunction_af
                                                                                        jmp   n00243_disjunction_as
n00298_call_builtin_icon_β:
                                                                                        jmp   n00243_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00299_unop_α
n00240_var_β:
                                                                                        jmp   n00239_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00299_unop_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # lo
                        mov              rsi, qword ptr [rbp + 1400]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00300_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00300_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00301_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00302_binop_test_α
.Lx00301_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00302_binop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 112
                                                                                        je    .Lx00303_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 112
                                                                                        je    .Lx00303_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 3
                                                                                        jne   .Lx00303_2
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 3
                                                                                        jne   .Lx00303_2
.Lx00303_1:
                        mov              rax, qword ptr [rbp + 840]
                        mov              rcx, qword ptr [rbp + 872]
                        cmp              rax, rcx
                                                                                        jne   n00239_disjunction_af
                        mov              rcx, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rcx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rcx
                                                                                        jmp   n00304_keyword_icon_α
.Lx00303_0:
                        mov              rdi, qword ptr [rbp + 832]                     # a
                        mov              rsi, qword ptr [rbp + 840]                     # a
                        mov              rdx, qword ptr [rbp + 864]                     # b
                        mov              rcx, qword ptr [rbp + 872]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 816]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00303_1
                        cmp              eax, 1
                                                                                        je    n00239_disjunction_af
                                                                                        jmp   n00304_keyword_icon_α
.Lx00303_2:
                        mov              rdi, qword ptr [rbp + 832]                     # lhs
                        mov              rsi, qword ptr [rbp + 840]                     # lhs
                        mov              rdx, qword ptr [rbp + 864]                     # rhs
                        mov              rcx, qword ptr [rbp + 872]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00239_disjunction_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00304_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00305_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00226_scan_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00239_disjunction_as
n00304_keyword_icon_β:
                                                                                        jmp   n00226_scan_α
.Lx00305_0:
                        .quad            .Lx00305_0_s
.Lx00305_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n00226_scan_α:
                        lea              rdi, [rbp + 656]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 656]
                        mov              r14, qword ptr [rbp + 664]
                        mov              r15, qword ptr [rbp + 672]
                                                                                        jmp   n00217_disjunction_af
n00226_scan_β:
                                                                                        jmp   n00217_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_β:
                                                                                        jmp   proc_grammar_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              rbp, qword ptr [rbp + 1464]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_ω:
                        lea              rsp, [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1456]
                        mov              rbp, qword ptr [rbp + 1464]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_grammar_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00306_2]
                        lea              rdx, [rip + .Lx00306_3]
                                                                                        jmp   proc_grammar_α
.Lx00306_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00306_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_listimage_α
proc_listimage_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 320
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
proc_listimage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00307_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 0
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
                        mov              rdi, qword ptr [rbp + 96]                      # obj
                        mov              rsi, qword ptr [rbp + 104]                     # obj
                        mov              rdx, qword ptr [rbp + 80]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 104
                                                                                        je    n00313_var_α
                                                                                        jmp   n00314_assign_α
n00311_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx00312_0
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00315_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00317_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00318_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00318_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        call             proc_symimage_dcα
                                                                                        jmp   .Lx00319_2
.Lx00319_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n00320_unmark_α
                                                                                        jmp   n00321_binop_α
n00318_call_proc_staged_β:
                                                                                        jmp   n00320_unmark_α
.Lx00319_0:
                        .quad            .Lx00319_0_s
.Lx00319_0_s:
                        .string          "symimage"
#-----------------------------------------------------------------------------------------------------------------------
n00321_binop_α:
                        mov              rdi, qword ptr [rbp + 272]                     # a
                        mov              rsi, qword ptr [rbp + 280]                     # a
                        mov              rdx, qword ptr [rbp + 192]                     # b
                        mov              rcx, qword ptr [rbp + 200]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00322_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00322_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00320_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00320_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00311_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00313_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00323_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_listimage_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_β:
                                                                                        jmp   proc_listimage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 352]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_ω:
                        lea              rsp, [rbp + 352]
                        mov              rcx, qword ptr [rbp + 336]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_listimage_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00324_2]
                        lea              rdx, [rip + .Lx00324_3]
                                                                                        jmp   proc_listimage_α
.Lx00324_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00324_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prompter_α
proc_prompter_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jmp   proc_prompter_γ
.Lx00327_0:
                                                                                        jmp   proc_prompter_γ
n00325_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_prompter_ω
n00325_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
n00328_conjunction_α:
                                                                                        jmp   n00325_disjunction_as
n00328_conjunction_β:
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
n00326_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00329_lit_integer_α
n00326_var_ref_β:
                                                                                        jmp   n00325_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00329_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00330_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00331_subscript_α
.Lx00330_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00331_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]                     # base
                        mov              rsi, qword ptr [rbp + 184]                     # base
                        mov              rdx, qword ptr [rbp + 192]                     # idx
                        mov              rcx, qword ptr [rbp + 200]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00325_disjunction_af
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n00332_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00332_deref_α:
                        mov              rdi, qword ptr [rbp + 208]                     # d
                        mov              rsi, qword ptr [rbp + 216]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00325_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00333_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx00334_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00335_binop_test_α
.Lx00334_0:
                        .quad            .Lx00334_0_s
.Lx00334_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n00335_binop_test_α:
                        mov              rdi, qword ptr [rbp + 224]                     # lhs
                        mov              rsi, qword ptr [rbp + 232]                     # lhs
                        mov              rdx, qword ptr [rbp + 240]                     # rhs
                        mov              rcx, qword ptr [rbp + 248]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00325_disjunction_af
                        mov              rdi, qword ptr [rbp + 240]                     # d
                        mov              rsi, qword ptr [rbp + 248]                     # d
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
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00338_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00339_lit_integer_α
.Lx00338_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00340_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00341_subscript_α
.Lx00340_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00341_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]                     # arr
                        mov              rsi, qword ptr [rbp + 120]                     # arr
                        mov              rdx, qword ptr [rbp + 128]                     # i
                        mov              rcx, qword ptr [rbp + 136]                     # i
                        mov              r8, qword ptr [rbp + 144]                      # j
                        mov              r9, qword ptr [rbp + 152]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n00342_return_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00343_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052352], rax                    # prompt
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00342_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_prompter_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_β:
                                                                                        jmp   proc_prompter_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_prompter_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00344_2]
                        lea              rdx, [rip + .Lx00344_3]
                                                                                        jmp   proc_prompter_α
.Lx00344_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00344_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pwrite_α
proc_pwrite_α:
                        sub              rsp, 1744
                        mov              qword ptr [rsp + 1720], rcx
                        mov              qword ptr [rsp + 1728], rdx
                        mov              qword ptr [rsp + 1736], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1712
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jmp   proc_pwrite_γ
.Lx00350_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00350_1
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_pwrite_γ
.Lx00350_1:
                                                                                        jmp   proc_pwrite_γ
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
n00353_conjunction_α:
                                                                                        jmp   n00348_disjunction_as
n00353_conjunction_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
n00352_disjunction_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   n00354_var_α
n00352_disjunction_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx00355_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00348_disjunction_as
.Lx00355_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00355_1
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00348_disjunction_as
.Lx00355_1:
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
                                                                                        je    n00356_lit_string_α
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
n00356_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 28
                        mov              rax, qword ptr [rip + .Lx00357_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00358_var_α
n00356_lit_string_β:
                                                                                        jmp   n00352_disjunction_af
.Lx00357_0:
                        .quad            .Lx00357_0_s
.Lx00357_0_s:
                        .string          "*** undefined nonterminal:  "
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00359_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00359_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn797:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn797]                         # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00352_disjunction_af
                                                                                        jmp   n00352_disjunction_as
n00359_call_builtin_icon_β:
                                                                                        jmp   n00352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00354_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00360_var_α
n00354_var_β:
                                                                                        jmp   n00352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00361_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00361_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 3
                        mov              rax, qword ptr [rip + .Lx00362_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00363_var_ref_α
.Lx00362_0:
                        .quad            .Lx00362_0_s
.Lx00362_0_s:
                        .string          "::="
#-----------------------------------------------------------------------------------------------------------------------
n00363_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n00364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00365_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00366_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00367_lit_integer_α
.Lx00366_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00368_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00369_subscript_α
.Lx00368_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00369_subscript_α:
                        mov              rdi, qword ptr [rbp + 1104]                    # arr
                        mov              rsi, qword ptr [rbp + 1112]                    # arr
                        mov              rdx, qword ptr [rbp + 1120]                    # i
                        mov              rcx, qword ptr [rbp + 1128]                    # i
                        mov              r8, qword ptr [rbp + 1136]                     # j
                        mov              r9, qword ptr [rbp + 1144]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n00352_disjunction_af
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00370_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_subscript_α:
                        mov              rdi, qword ptr [rbp + 1072]                    # base
                        mov              rsi, qword ptr [rbp + 1080]                    # base
                        mov              rdx, qword ptr [rbp + 1088]                    # idx
                        mov              rcx, qword ptr [rbp + 1096]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00352_disjunction_af
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00371_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_deref_α:
                        mov              rdi, qword ptr [rbp + 1152]                    # d
                        mov              rsi, qword ptr [rbp + 1160]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00352_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00372_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_unop_test_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 104
                                                                                        je    n00352_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00352_disjunction_af
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00373_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00373_call_proc_staged_α:
                        lea              rsi, [rbp + 1056]
                        call             proc_getrhs_dcα
                                                                                        jmp   .Lx00374_2
.Lx00374_2:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 104
                                                                                        je    n00352_disjunction_af
                                                                                        jmp   n00375_call_builtin_icon_α
n00373_call_proc_staged_β:
                                                                                        jmp   n00352_disjunction_af
.Lx00374_0:
                        .quad            .Lx00374_0_s
.Lx00374_0_s:
                        .string          "getrhs"
#-----------------------------------------------------------------------------------------------------------------------
n00375_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn816:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn816]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n00352_disjunction_af
                                                                                        jmp   n00352_disjunction_as
n00375_call_builtin_icon_β:
                                                                                        jmp   n00352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00376_unop_α
n00349_var_β:
                                                                                        jmp   n00348_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00376_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00377_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00377_lit_integer_α:
                        mov              qword ptr [rbp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00378_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00379_binop_test_α
.Lx00378_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00379_binop_test_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 112
                                                                                        je    .Lx00380_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 112
                                                                                        je    .Lx00380_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 3
                                                                                        jne   .Lx00380_2
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 3
                                                                                        jne   .Lx00380_2
.Lx00380_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 824]
                        cmp              rax, rcx
                                                                                        jne   n00348_disjunction_af
                        mov              rcx, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rcx
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rcx
                                                                                        jmp   n00381_var_α
.Lx00380_0:
                        mov              rdi, qword ptr [rbp + 784]                     # a
                        mov              rsi, qword ptr [rbp + 792]                     # a
                        mov              rdx, qword ptr [rbp + 816]                     # b
                        mov              rcx, qword ptr [rbp + 824]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 768]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00380_1
                        cmp              eax, 1
                                                                                        je    n00348_disjunction_af
                                                                                        jmp   n00381_var_α
.Lx00380_2:
                        mov              rdi, qword ptr [rbp + 784]                     # lhs
                        mov              rsi, qword ptr [rbp + 792]                     # lhs
                        mov              rdx, qword ptr [rbp + 816]                     # rhs
                        mov              rcx, qword ptr [rbp + 824]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00348_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00381_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_var_α:
                        mov              rax, qword ptr [1879052288]                    # defs
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 736], rax                     # result
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00382_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_lit_integer_α:
                        mov              qword ptr [rbp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00384_call_builtin_icon_α
.Lx00383_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn825:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn825]                         # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n00385_var_α
                                                                                        jmp   n00386_assign_α
n00384_call_builtin_icon_β:
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00387_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn830:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn830]                         # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_pwrite_ω
                                                                                        jmp   n00388_assign_α
n00387_call_builtin_icon_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
n00388_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n00389_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n00390_var_α
n00389_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx00391_0
                                                                                        jmp   n00392_var_α
.Lx00391_0:
                                                                                        jmp   n00392_var_α
n00389_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00392_var_α
n00389_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00392_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00393_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00393_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 1
                        mov              rax, qword ptr [rip + .Lx00394_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00395_var_α
.Lx00394_0:
                        .quad            .Lx00394_0_s
.Lx00394_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00395_var_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00396_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 4
                        mov              rax, qword ptr [rip + .Lx00397_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00398_var_α
.Lx00397_0:
                        .quad            .Lx00397_0_s
.Lx00397_0_s:
                        .string          ">::="
#-----------------------------------------------------------------------------------------------------------------------
n00398_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00399_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn843:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn843]                         # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n00385_var_α
                                                                                        jmp   n00400_call_proc_staged_α
n00399_call_builtin_icon_β:
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00400_call_proc_staged_α:
                        lea              rsi, [rbp + 416]
                        call             proc_getrhs_dcα
                                                                                        jmp   .Lx00401_2
.Lx00401_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n00385_var_α
                                                                                        jmp   n00402_call_builtin_icon_α
n00400_call_proc_staged_β:
                                                                                        jmp   n00385_var_α
.Lx00401_0:
                        .quad            .Lx00401_0_s
.Lx00401_0_s:
                        .string          "getrhs"
#-----------------------------------------------------------------------------------------------------------------------
n00402_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn847:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn847]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n00385_var_α
                                                                                        jmp   n00403_conjunction_α
n00402_call_builtin_icon_β:
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_conjunction_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00385_var_α
n00403_conjunction_β:
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_conjunction_α:
                                                                                        jmp   n00389_disjunction_as
n00404_conjunction_β:
                                                                                        jmp   n00392_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_var_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00405_var_α
n00390_var_β:
                                                                                        jmp   n00389_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00405_var_α:
                        mov              rax, qword ptr [1879052432]                    # pwrite__STATIC__builtin
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 656], rax                     # result
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00406_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_iterate_α:
                        mov              qword ptr [rbp + 640], 0
.Lx00407_0:
                        mov              rdi, qword ptr [rbp + 656]                     # obj
                        mov              rsi, qword ptr [rbp + 664]                     # obj
                        mov              rdx, qword ptr [rbp + 640]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              rax, 104
                                                                                        je    n00389_disjunction_af
                                                                                        jmp   n00408_binop_test_α
n00406_iterate_β:
                        inc              qword ptr [rbp + 640]
                                                                                        jmp   .Lx00407_0
#-----------------------------------------------------------------------------------------------------------------------
n00408_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1664]                    # lhs
                        mov              rsi, qword ptr [rbp + 1672]                    # lhs
                        mov              rdx, qword ptr [rbp + 624]                     # rhs
                        mov              rcx, qword ptr [rbp + 632]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00406_iterate_β
                        mov              rdi, qword ptr [rbp + 624]                     # d
                        mov              rsi, qword ptr [rbp + 632]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00409_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00410_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00410_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn859:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn859]                         # fn
                        lea              rsi, [rbp + 544]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n00385_var_α
                                                                                        jmp   n00385_var_α
n00410_call_builtin_icon_β:
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00411_goto_α:
                                                                                        jmp   n00385_var_α
n00411_goto_β:
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00351_goto_α:
                                                                                        jmp   n00385_var_α
n00351_goto_β:
                                                                                        jmp   n00385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                                # pwrite__INITFLAG__0
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n00412_nulltest_var_α
n00346_var_ref_β:
                                                                                        jmp   n00345_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00412_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 104
                                                                                        je    n00345_disjunction_af
                        mov              rdi, qword ptr [rbp + 1600]                    # d
                        mov              rsi, qword ptr [rbp + 1608]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00345_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00345_disjunction_af
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n00413_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00413_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00414_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n00415_assign_var_α
.Lx00414_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00415_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1616]                    # var
                        mov              rsi, qword ptr [rbp + 1624]                    # var
                        mov              rdx, qword ptr [rbp + 1648]                    # val
                        mov              rcx, qword ptr [rbp + 1656]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00345_disjunction_af
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n00416_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 2
                        mov              rax, qword ptr [rip + .Lx00417_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n00418_lit_string_α
.Lx00417_0:
                        .quad            .Lx00417_0_s
.Lx00417_0_s:
                        .string          "lb"
#-----------------------------------------------------------------------------------------------------------------------
n00418_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 2
                        mov              rax, qword ptr [rip + .Lx00419_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n00420_lit_string_α
.Lx00419_0:
                        .quad            .Lx00419_0_s
.Lx00419_0_s:
                        .string          "rb"
#-----------------------------------------------------------------------------------------------------------------------
n00420_lit_string_α:
                        mov              qword ptr [rbp + 1504], 2                      # result
                        mov              dword ptr [rbp + 1508], 2
                        mov              rax, qword ptr [rip + .Lx00421_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00422_lit_string_α
.Lx00421_0:
                        .quad            .Lx00421_0_s
.Lx00421_0_s:
                        .string          "vb"
#-----------------------------------------------------------------------------------------------------------------------
n00422_lit_string_α:
                        mov              qword ptr [rbp + 1520], 2                      # result
                        mov              dword ptr [rbp + 1524], 2
                        mov              rax, qword ptr [rip + .Lx00423_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n00424_lit_string_α
.Lx00423_0:
                        .quad            .Lx00423_0_s
.Lx00423_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
n00424_lit_string_α:
                        mov              qword ptr [rbp + 1536], 2                      # result
                        mov              dword ptr [rbp + 1540], 0
                        mov              rax, qword ptr [rip + .Lx00425_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n00426_lit_string_α
.Lx00425_0:
                        .quad            .Lx00425_0_s
.Lx00425_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00426_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 6
                        mov              rax, qword ptr [rip + .Lx00427_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00428_lit_string_α
.Lx00427_0:
                        .quad            .Lx00427_0_s
.Lx00427_0_s:
                        .string          "&lcase"
#-----------------------------------------------------------------------------------------------------------------------
n00428_lit_string_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], 6
                        mov              rax, qword ptr [rip + .Lx00429_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n00430_lit_string_α
.Lx00429_0:
                        .quad            .Lx00429_0_s
.Lx00429_0_s:
                        .string          "&ucase"
#-----------------------------------------------------------------------------------------------------------------------
n00430_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 6
                        mov              rax, qword ptr [rip + .Lx00431_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00432_make_list_α
.Lx00431_0:
                        .quad            .Lx00431_0_s
.Lx00431_0_s:
                        .string          "&digit"
#-----------------------------------------------------------------------------------------------------------------------
n00432_make_list_α:
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
                                                                                        jmp   n00433_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00433_assign_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [1879052432], rax                    # pwrite__STATIC__builtin
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n00345_disjunction_as
n00433_assign_β:
                                                                                        jmp   n00348_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_β:
                                                                                        jmp   proc_pwrite_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1720]
                        mov              rbp, qword ptr [rbp + 1736]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_ω:
                        lea              rsp, [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1728]
                        mov              rbp, qword ptr [rbp + 1736]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_pwrite_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00434_2]
                        lea              rdx, [rip + .Lx00434_3]
                                                                                        jmp   proc_pwrite_α
.Lx00434_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00434_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_source_α
proc_source_α:
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rcx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 768
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
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
                        mov              rdi, qword ptr [rbp + 704]                     # lo
                        mov              rsi, qword ptr [rbp + 712]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
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
                        lea              rdi, [rbp + 48]                                # out3
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
n00442_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_source_γ
#-----------------------------------------------------------------------------------------------------------------------
n00443_conjunction_α:
                                                                                        jmp   n00437_disjunction_as
n00443_conjunction_β:
                                                                                        jmp   n00441_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Lx00444_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00445_scan_match_α
n00438_lit_string_β:
                                                                                        jmp   n00437_disjunction_af
.Lx00444_0:
                        .quad            .Lx00444_0_s
.Lx00444_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00445_scan_match_α:
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
                        mov              qword ptr [rbp + 656], 3
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
n00454_var_α:
                        mov              rax, qword ptr [1879052304]                    # ifile
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 272], rax                     # result
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00455_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00455_var_α:
                        mov              rax, qword ptr [1879052320]                    # in
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 288], rax                     # result
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00456_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn928:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn928]                         # fn
                        lea              rsi, [rbp + 224]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n00457_return_α
                                                                                        jmp   n00458_var_α
n00456_call_builtin_icon_β:
                                                                                        jmp   n00457_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00458_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00459_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00459_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [1879052320], rax                    # in
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00460_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00460_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00457_return_α
n00460_conjunction_β:
                                                                                        jmp   n00457_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00457_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_source_γ
#-----------------------------------------------------------------------------------------------------------------------
n00461_conjunction_α:
                                                                                        jmp   n00449_disjunction_as
n00461_conjunction_β:
                                                                                        jmp   n00449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00453_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00462_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    proc_source_ω
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00463_lit_string_α
n00453_keyword_icon_β:
                                                                                        jmp   proc_source_ω
.Lx00462_0:
                        .quad            .Lx00462_0_s
.Lx00462_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00463_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 16
                        mov              rax, qword ptr [rip + .Lx00464_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00465_var_α
.Lx00464_0:
                        .quad            .Lx00464_0_s
.Lx00464_0_s:
                        .string          "*** cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00465_var_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00466_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn940:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn940]                         # fn
                        lea              rsi, [rbp + 496]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_source_ω
                                                                                        jmp   proc_source_ω
n00466_call_builtin_icon_β:
                                                                                        jmp   proc_source_ω
#-----------------------------------------------------------------------------------------------------------------------
n00450_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00467_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00468_scan_tab_α
n00450_lit_integer_β:
                                                                                        jmp   n00449_disjunction_af
.Lx00467_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00468_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00469_0
                        add              rax, r15
                        add              rax, 1
.Lx00469_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00469_239
                        add              rsp, 16
                                                                                        jmp   n00449_disjunction_af
.Lx00469_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00469_240
                        add              rsp, 16
                                                                                        jmp   n00449_disjunction_af
.Lx00469_240:
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
                                                                                        jmp   n00470_assign_α
n00468_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00470_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00471_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn946:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn946]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n00449_disjunction_af
                                                                                        jmp   n00449_disjunction_as
n00471_call_builtin_icon_β:
                                                                                        jmp   n00449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00441_scan_α:
                        lea              rdi, [rbp + 48]                                # out3
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 800]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              rbp, qword ptr [rbp + 792]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_source_ω:
                        lea              rsp, [rbp + 800]
                        mov              rcx, qword ptr [rbp + 784]
                        mov              rbp, qword ptr [rbp + 792]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_source_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00472_2]
                        lea              rdx, [rip + .Lx00472_3]
                                                                                        jmp   proc_source_α
.Lx00472_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00472_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_symimage_α
proc_symimage_α:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 608
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                        lea              rdi, [rip + .Lrkfn979]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_symimage_ω
                                                                                        jmp   n00475_lit_string_α
n00474_call_builtin_icon_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
n00475_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 6
                        mov              rax, qword ptr [rip + .Lx00476_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00477_call_builtin_α
.Lx00476_0:
                        .quad            .Lx00476_0_s
.Lx00476_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00477_call_builtin_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn982:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn982]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
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
n00480_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00478_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 7
                        mov              rax, qword ptr [rip + .Lx00482_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00483_call_builtin_α
.Lx00482_0:
                        .quad            .Lx00482_0_s
.Lx00482_0_s:
                        .string          "nonterm"
#-----------------------------------------------------------------------------------------------------------------------
n00483_call_builtin_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn988:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn988]                         # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n00484_lit_string_α
                                                                                        jmp   n00485_lit_string_α
n00483_call_builtin_β:
                                                                                        jmp   n00484_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00485_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx00486_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00487_var_α
.Lx00486_0:
                        .quad            .Lx00486_0_s
.Lx00486_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00487_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00488_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00489_0]                # fname
                        mov              rsi, qword ptr [rbp + 384]                     # obj
                        mov              rdx, qword ptr [rbp + 392]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    proc_symimage_ω
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00490_binop_α
.Lx00489_0:
                        .quad            .Lx00489_0_s
.Lx00489_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n00490_binop_α:
                        mov              rdi, qword ptr [rbp + 352]                     # a
                        mov              rsi, qword ptr [rbp + 360]                     # a
                        mov              rdx, qword ptr [rbp + 368]                     # b
                        mov              rcx, qword ptr [rbp + 376]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n00491_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00491_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx00492_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00493_binop_α
.Lx00492_0:
                        .quad            .Lx00492_0_s
.Lx00492_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00493_binop_α:
                        mov              rdi, qword ptr [rbp + 336]                     # a
                        mov              rsi, qword ptr [rbp + 344]                     # a
                        mov              rdx, qword ptr [rbp + 400]                     # b
                        mov              rcx, qword ptr [rbp + 408]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00494_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 7
                        mov              rax, qword ptr [rip + .Lx00495_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00496_call_builtin_α
.Lx00495_0:
                        .quad            .Lx00495_0_s
.Lx00495_0_s:
                        .string          "charset"
#-----------------------------------------------------------------------------------------------------------------------
n00496_call_builtin_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn999:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn999]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    proc_symimage_ω
                                                                                        jmp   n00497_lit_string_α
n00496_call_builtin_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
n00497_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Lx00498_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00499_var_α
.Lx00498_0:
                        .quad            .Lx00498_0_s
.Lx00498_0_s:
                        .string          "<'"
#-----------------------------------------------------------------------------------------------------------------------
n00499_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00500_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00500_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00501_0]               # fname
                        mov              rsi, qword ptr [rbp + 192]                     # obj
                        mov              rdx, qword ptr [rbp + 200]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    proc_symimage_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00502_binop_α
.Lx00501_0:
                        .quad            .Lx00501_0_s
.Lx00501_0_s:
                        .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
n00502_binop_α:
                        mov              rdi, qword ptr [rbp + 160]                     # a
                        mov              rsi, qword ptr [rbp + 168]                     # a
                        mov              rdx, qword ptr [rbp + 176]                     # b
                        mov              rcx, qword ptr [rbp + 184]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00503_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00503_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 2
                        mov              rax, qword ptr [rip + .Lx00504_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00505_binop_α
.Lx00504_0:
                        .quad            .Lx00504_0_s
.Lx00504_0_s:
                        .string          "'>"
#-----------------------------------------------------------------------------------------------------------------------
n00505_binop_α:
                        mov              rdi, qword ptr [rbp + 144]                     # a
                        mov              rsi, qword ptr [rbp + 152]                     # a
                        mov              rdx, qword ptr [rbp + 208]                     # b
                        mov              rcx, qword ptr [rbp + 216]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00506_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00507_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00507_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_symimage_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_β:
                                                                                        jmp   proc_symimage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 640]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rbp, qword ptr [rbp + 632]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_ω:
                        lea              rsp, [rbp + 640]
                        mov              rcx, qword ptr [rbp + 624]
                        mov              rbp, qword ptr [rbp + 632]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_symimage_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00508_2]
                        lea              rdx, [rip + .Lx00508_3]
                                                                                        jmp   proc_symimage_α
.Lx00508_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00508_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_syms_α
proc_syms_α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
n00510_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                                # syms__INITFLAG__0
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00513_nulltest_var_α
n00510_var_ref_β:
                                                                                        jmp   n00509_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00513_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 104
                                                                                        je    n00509_disjunction_af
                        mov              rdi, qword ptr [rbp + 800]                     # d
                        mov              rsi, qword ptr [rbp + 808]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00509_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00509_disjunction_af
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00514_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00514_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00515_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00516_assign_var_α
.Lx00515_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00516_assign_var_α:
                        mov              rdi, qword ptr [rbp + 816]                     # var
                        mov              rsi, qword ptr [rbp + 824]                     # var
                        mov              rdx, qword ptr [rbp + 848]                     # val
                        mov              rcx, qword ptr [rbp + 856]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00509_disjunction_af
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00517_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00517_lit_charset_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00518_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00519_unop_α
.Lx00518_0:
                        .quad            .Lx00518_0_s
.Lx00518_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00519_unop_α:
                        mov              rdi, qword ptr [rbp + 784]                     # a
                        mov              rsi, qword ptr [rbp + 792]                     # a
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n00520_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [1879052464], rax                    # syms__STATIC__nonbrack
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00509_disjunction_as
n00520_assign_β:
                                                                                        jmp   n00512_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_make_list_α:
                        lea              rdi, [rbp + 720]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00521_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00522_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00523_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 672]                     # lo
                        mov              rsi, qword ptr [rbp + 680]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00524_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00524_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00525_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00525_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n00526_var_α
n00525_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx00527_0
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00528_call_builtin_icon_α
.Lx00527_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00527_1
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00528_call_builtin_icon_α
.Lx00527_1:
                                                                                        jmp   n00528_call_builtin_icon_α
n00525_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        je    n00525_disjunction_af
                                                                                        jmp   n00529_call_value_β
n00525_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 1
                                                                                        je    n00530_lit_integer_α
                                                                                        jmp   n00531_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00528_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1066:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1066]                        # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n00525_disjunction_β
                                                                                        jmp   n00524_var_α
n00528_call_builtin_icon_β:
                                                                                        jmp   n00525_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00530_lit_integer_α:
                        mov              qword ptr [rbp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00532_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00533_lit_string_α
n00530_lit_integer_β:
                                                                                        jmp   n00525_disjunction_af
.Lx00532_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00533_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx00534_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00535_scan_match_α
.Lx00534_0:
                        .quad            .Lx00534_0_s
.Lx00534_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00535_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00536_239
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00536_239:
                        mov              rdi, qword ptr [rip + .Lx00536_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00536_240
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00536_240:
                        mov              qword ptr [rbp + 496], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00537_scan_tab_α
.Lx00536_0:
                        .quad            .Lx00536_0_s
.Lx00536_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n00537_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 504]
                        cmp              rax, 1
                                                                                        jge   .Lx00538_0
                        add              rax, r15
                        add              rax, 1
.Lx00538_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00538_239
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00538_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00538_240
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00538_240:
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
                                                                                        jmp   n00539_lit_charset_α
n00537_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00539_lit_charset_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], -1
                        mov              rax, qword ptr [rip + .Lx00540_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00541_scan_upto_α
.Lx00540_0:
                        .quad            .Lx00540_0_s
.Lx00540_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00541_scan_upto_α:
                        mov              qword ptr [rbp + 592], r14
.Lx00542_0:
                        mov              rax, qword ptr [rbp + 592]
                        cmp              rax, r15
                                                                                        jge   n00525_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00542_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00542_1
                        mov              qword ptr [rbp + 576], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00543_scan_tab_α
.Lx00542_1:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx00542_0
n00541_scan_upto_β:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx00542_0
.Lx00542_2:
                        .quad            .Lx00542_2_s
.Lx00542_2_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n00543_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 584]
                        cmp              rax, 1
                                                                                        jge   .Lx00544_0
                        add              rax, r15
                        add              rax, 1
.Lx00544_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00544_239
                        add              rsp, 16
                                                                                        jmp   n00541_scan_upto_β
.Lx00544_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00544_240
                        add              rsp, 16
                                                                                        jmp   n00541_scan_upto_β
.Lx00544_240:
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
                                                                                        jmp   n00545_lit_integer_α
n00543_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00541_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00545_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00546_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00547_scan_move_α
.Lx00546_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00547_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00548_239
                        add              rsp, 16
                                                                                        jmp   n00541_scan_upto_β
.Lx00548_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00548_240
                        add              rsp, 16
                                                                                        jmp   n00541_scan_upto_β
.Lx00548_240:
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
                                                                                        jmp   n00529_call_value_α
n00547_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00541_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00529_call_value_α:
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
                        mov              rdi, qword ptr [rbp + 336]                     # callee
                        mov              rsi, qword ptr [rbp + 344]                     # callee
                        lea              rdx, [rbp + 368]                               # argv
                        mov              ecx, 3                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00549_7
                        lea              rcx, [rip + .Lx00549_3]
                        lea              rdx, [rip + .Lx00549_4]
                                                                                        jmp   rax
.Lx00549_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00549_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00549_2
.Lx00549_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00549_2
.Lx00549_4:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00549_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00549_2
.Lx00549_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00549_2
.Lx00549_7:
                        mov              rdi, qword ptr [rbp + 336]                     # callee
                        mov              rsi, qword ptr [rbp + 344]                     # callee
                        lea              rdx, [rbp + 368]                               # argv
                        mov              ecx, 3                                         # n
                        lea              r8, [rbp + 416]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx00549_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n00541_scan_upto_β
                                                                                        jmp   n00550_call_proc_staged_α
n00529_call_value_β:
                        mov              rax, qword ptr [rbp + 416]
                        cmp              rax, 1
                                                                                        jne   .Lx00549_8
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx00549_8:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rdi, [rbp + 416]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n00541_scan_upto_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00550_call_proc_staged_α
                                                                                        jmp   n00541_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00550_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 352]
                        call             proc_defnon_dcα
                                                                                        jmp   .Lx00551_2
.Lx00551_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00529_call_value_β
                                                                                        jmp   n00525_disjunction_as
n00550_call_proc_staged_β:
                                                                                        jmp   n00529_call_value_β
.Lx00551_0:
                        .quad            .Lx00551_0_s
.Lx00551_0_s:
                        .string          "defnon"
#-----------------------------------------------------------------------------------------------------------------------
n00526_var_α:
                        mov              rax, qword ptr [1879052464]                    # syms__STATIC__nonbrack
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 272], rax                     # result
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00552_scan_many_α
n00526_var_β:
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00552_scan_many_α:
                        mov              eax, r14d
.Lx00553_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00553_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 280]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00553_1
                        add              eax, 1
                                                                                        jmp   .Lx00553_0
.Lx00553_1:
                        cmp              eax, r14d
                                                                                        je    n00525_disjunction_af
                        mov              qword ptr [rbp + 256], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 264], rcx
                                                                                        jmp   n00554_scan_tab_α
n00552_scan_many_β:
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00554_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 264]
                        cmp              rax, 1
                                                                                        jge   .Lx00555_0
                        add              rax, r15
                        add              rax, 1
.Lx00555_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00555_239
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00555_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00555_240
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
.Lx00555_240:
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
n00554_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00525_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00531_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n00556_var_α
n00531_scan_β:
                                                                                        jmp   n00556_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00557_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_syms_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_β:
                                                                                        jmp   proc_syms_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_syms_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00558_2]
                        lea              rdx, [rip + .Lx00558_3]
                                                                                        jmp   proc_syms_α
.Lx00558_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00558_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rcx
                        mov              qword ptr [rsp + 2768], rdx
                        mov              qword ptr [rsp + 2776], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2752
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00559_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00560_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00560_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 104
                                                                                        je    n00561_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]                    # d
                        mov              rsi, qword ptr [rbp + 2504]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
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
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00563_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00564_call_builtin_icon_α
.Lx00563_0:
                        .quad            .Lx00563_0_s
.Lx00563_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00564_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn1207:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1207]                        # fn
                        lea              rsi, [rbp + 2560]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        je    n00561_call_builtin_icon_α
                                                                                        jmp   n00565_assign_var_α
n00564_call_builtin_icon_β:
                                                                                        jmp   n00561_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]                    # var
                        mov              rsi, qword ptr [rbp + 2520]                    # var
                        mov              rdx, qword ptr [rbp + 2544]                    # val
                        mov              rcx, qword ptr [rbp + 2552]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00561_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00561_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00561_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1210:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1210]                        # fn
                        lea              rsi, [rbp + 2480]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 104
                                                                                        je    n00566_make_list_α
                                                                                        jmp   n00567_assign_α
n00561_call_builtin_icon_β:
                                                                                        jmp   n00566_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00566_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00566_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00568_assign_α
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
                        lea              rdi, [rip + .Lrkfn1218]                        # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00571_var_α
                                                                                        jmp   n00572_assign_α
n00570_call_builtin_icon_β:
                                                                                        jmp   n00571_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00572_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00573_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00573_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00574_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00574_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # lo
                        mov              rsi, qword ptr [rbp + 2440]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00575_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00575_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00576_lit_string_α
n00575_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00577_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00578_scan_α
.Lx00577_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00577_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00578_scan_α
.Lx00577_1:
                                                                                        jmp   n00578_scan_α
n00575_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00579_disjunction_β
                                                                                        jmp   n00580_scan_α
n00575_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00581_var_α
                                                                                        jmp   n00580_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00578_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00569_var_α
n00578_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00575_disjunction_β
                                                                                        jmp   n00569_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00582_conjunction_α:
                                                                                        jmp   n00575_disjunction_as
n00582_conjunction_β:
                                                                                        jmp   n00580_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00581_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00583_var_α
n00581_var_β:
                                                                                        jmp   n00580_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00583_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00584_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00584_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn1234:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1234]                        # fn
                        lea              rsi, [rbp + 2352]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n00580_scan_α
                                                                                        jmp   n00575_disjunction_as
n00584_call_builtin_icon_β:
                                                                                        jmp   n00580_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00576_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00585_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00586_scan_match_α
n00576_lit_string_β:
                                                                                        jmp   n00575_disjunction_af
.Lx00585_0:
                        .quad            .Lx00585_0_s
.Lx00585_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00586_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00587_239
                        add              rsp, 16
                                                                                        jmp   n00575_disjunction_af
.Lx00587_239:
                        mov              rdi, qword ptr [rip + .Lx00587_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00587_240
                        add              rsp, 16
                                                                                        jmp   n00575_disjunction_af
.Lx00587_240:
                        mov              qword ptr [rbp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00588_scan_tab_α
.Lx00587_0:
                        .quad            .Lx00587_0_s
.Lx00587_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00588_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00589_0
                        add              rax, r15
                        add              rax, 1
.Lx00589_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00589_239
                        add              rsp, 16
                                                                                        jmp   n00575_disjunction_af
.Lx00589_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00589_240
                        add              rsp, 16
                                                                                        jmp   n00575_disjunction_af
.Lx00589_240:
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
                                                                                        jmp   n00590_lit_integer_α
n00588_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00575_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00590_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00591_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00592_scan_pos_α
.Lx00591_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00592_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00593_0
                        add              rax, r15
                        add              rax, 1
.Lx00593_0:
                        cmp              rax, 1
                                                                                        jl    n00594_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00594_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00594_var_α
                        mov              qword ptr [rbp + 2224], 3
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00588_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00594_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00595_conjunction_α
n00594_var_β:
                                                                                        jmp   n00588_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00595_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00596_disjunction_α
n00595_conjunction_β:
                                                                                        jmp   n00575_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00596_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00597_lit_string_α
n00596_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00598_0
                                                                                        jmp   n00599_lit_integer_α
.Lx00598_0:
                                                                                        jmp   n00599_lit_integer_α
n00596_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00599_lit_integer_α
n00596_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00599_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00600_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00601_scan_move_α
.Lx00600_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00601_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00602_239
                        add              rsp, 16
                                                                                        jmp   n00580_scan_α
.Lx00602_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00602_240
                        add              rsp, 16
                                                                                        jmp   n00580_scan_α
.Lx00602_240:
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
                                                                                        jmp   n00603_assign_α
n00601_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00580_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00603_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00579_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00579_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00604_var_α
n00579_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00605_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00599_lit_integer_α
.Lx00605_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00605_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00599_lit_integer_α
.Lx00605_1:
                                                                                        jmp   n00599_lit_integer_α
n00579_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00606_disjunction_β
                                                                                        jmp   n00599_lit_integer_α
n00579_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00607_lit_string_α
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00607_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00608_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00609_var_α
n00607_lit_string_β:
                                                                                        jmp   n00599_lit_integer_α
.Lx00608_0:
                        .quad            .Lx00608_0_s
.Lx00608_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00609_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00610_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00610_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn1257:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1257]                        # fn
                        lea              rsi, [rbp + 1952]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n00599_lit_integer_α
                                                                                        jmp   n00579_disjunction_as
n00610_call_builtin_icon_β:
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00604_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00611_var_α
n00604_var_β:
                                                                                        jmp   n00579_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00611_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00612_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00612_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              qword ptr [rbp + 1872], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00613_60:
                        .section         .rodata
.Lbynamegenfn473:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn473]                  # fn
                        lea              rsi, [rbp + 1840]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 1872]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n00579_disjunction_af
                                                                                        jmp   n00614_lit_integer_α
n00612_call_builtin_gen_β:
                                                                                        jmp   .Lx00613_60
#-----------------------------------------------------------------------------------------------------------------------
n00614_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00615_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00616_coerce_numeric_α
.Lx00615_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00616_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 5
                                                                                        je    .Lx00617_1
                        cmp              eax, 3
                                                                                        jne   .Lx00617_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx00617_0
.Lx00617_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00618_binop_α
.Lx00617_0:
                        lea              rdi, [rbp + 1824]                              # self
                        lea              rsi, [rbp + 1920]                              # other
                        lea              rdx, [rbp + 1808]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00618_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00618_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx00619_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 3
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00620_assign_α
.Lx00619_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00579_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00620_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00620_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00621_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00621_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00622_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00622_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00623_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00623_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        mov              rdx, qword ptr [rbp + 512]                     # idx
                        mov              rcx, qword ptr [rbp + 520]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00599_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00606_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00606_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00624_lit_charset_α
n00606_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00625_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00626_assign_var_α
.Lx00625_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00625_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00626_assign_var_α
.Lx00625_1:
                                                                                        jmp   n00626_assign_var_α
n00606_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00599_lit_integer_α
                                                                                        jmp   n00599_lit_integer_α
n00606_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00627_lit_integer_α
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00626_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]                     # var
                        mov              rsi, qword ptr [rbp + 536]                     # var
                        mov              rdx, qword ptr [rbp + 560]                     # val
                        mov              rcx, qword ptr [rbp + 568]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00599_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00579_disjunction_as
n00626_assign_var_β:
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00627_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00628_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00606_disjunction_as
n00627_lit_integer_β:
                                                                                        jmp   n00599_lit_integer_α
.Lx00628_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00624_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00629_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00630_var_ref_α
n00624_lit_charset_β:
                                                                                        jmp   n00606_disjunction_af
.Lx00629_0:
                        .quad            .Lx00629_0_s
.Lx00629_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00630_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00631_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00631_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00632_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00632_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # base
                        mov              rsi, qword ptr [rbp + 1720]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00606_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00633_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00633_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # d
                        mov              rsi, qword ptr [rbp + 1752]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00606_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00634_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00634_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00635_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00635_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn490:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn490]                     # fn
                        lea              rsi, [rbp + 1632]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n00606_disjunction_af
                                                                                        jmp   n00636_disjunction_α
n00635_call_builtin_icon_β:
                                                                                        jmp   n00606_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00636_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00637_lit_string_α
n00636_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00638_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00639_assign_α
.Lx00638_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00638_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00639_assign_α
.Lx00638_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00638_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00639_assign_α
.Lx00638_2:
                                                                                        jmp   n00639_assign_α
n00636_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00636_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00636_disjunction_af
                                                                                        jmp   n00636_disjunction_af
n00636_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00640_var_α
                        cmp              eax, 2
                                                                                        je    n00641_lit_string_α
                                                                                        jmp   n00642_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00639_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00642_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00642_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00643_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00643_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00644_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00645_call_builtin_α
.Lx00644_0:
                        .quad            .Lx00644_0_s
.Lx00644_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00645_call_builtin_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn1293:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1293]                        # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n00646_lit_string_α
                                                                                        jmp   n00647_var_α
n00645_call_builtin_β:
                                                                                        jmp   n00646_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00647_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00648_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00648_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00649_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00646_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00650_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00651_call_builtin_α
.Lx00650_0:
                        .quad            .Lx00650_0_s
.Lx00650_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00651_call_builtin_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn1299:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1299]                        # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00652_lit_string_α
                                                                                        jmp   n00653_disjunction_α
n00651_call_builtin_β:
                                                                                        jmp   n00652_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00653_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00654_var_α
n00653_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00655_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00656_assign_α
.Lx00655_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00655_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00656_assign_α
.Lx00655_1:
                                                                                        jmp   n00656_assign_α
n00653_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00653_disjunction_af
                                                                                        jmp   n00653_disjunction_af
n00653_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00657_lit_string_α
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00656_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00649_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00657_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00658_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00659_var_α
n00657_lit_string_β:
                                                                                        jmp   n00653_disjunction_af
.Lx00658_0:
                        .quad            .Lx00658_0_s
.Lx00658_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00659_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00660_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00660_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00661_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00662_call_builtin_icon_α
.Lx00661_0:
                        .quad            .Lx00661_0_s
.Lx00661_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00662_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn1308:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1308]                        # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n00653_disjunction_af
                                                                                        jmp   n00653_disjunction_as
n00662_call_builtin_icon_β:
                                                                                        jmp   n00653_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00654_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00663_call_builtin_icon_α
n00654_var_β:
                                                                                        jmp   n00653_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00663_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn1312:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1312]                        # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n00653_disjunction_af
                                                                                        jmp   n00653_disjunction_as
n00663_call_builtin_icon_β:
                                                                                        jmp   n00653_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00652_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00664_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00665_call_builtin_α
.Lx00664_0:
                        .quad            .Lx00664_0_s
.Lx00664_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00665_call_builtin_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn1315:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1315]                        # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n00599_lit_integer_α
                                                                                        jmp   n00666_disjunction_α
n00665_call_builtin_β:
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00666_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00667_var_α
n00666_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00668_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00669_assign_α
.Lx00668_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00668_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00669_assign_α
.Lx00668_1:
                                                                                        jmp   n00669_assign_α
n00666_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00666_disjunction_af
                                                                                        jmp   n00666_disjunction_af
n00666_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00670_lit_string_α
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00669_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00649_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00649_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00671_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00671_conjunction_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00606_disjunction_as
n00671_conjunction_β:
                                                                                        jmp   n00599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00670_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00672_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00673_var_α
n00670_lit_string_β:
                                                                                        jmp   n00666_disjunction_af
.Lx00672_0:
                        .quad            .Lx00672_0_s
.Lx00672_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00673_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00674_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00675_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00676_call_builtin_icon_α
.Lx00675_0:
                        .quad            .Lx00675_0_s
.Lx00675_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00676_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn1327:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1327]                        # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n00666_disjunction_af
                                                                                        jmp   n00666_disjunction_as
n00676_call_builtin_icon_β:
                                                                                        jmp   n00666_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00667_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00677_call_builtin_icon_α
n00667_var_β:
                                                                                        jmp   n00666_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00677_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn1331:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1331]                        # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n00666_disjunction_af
                                                                                        jmp   n00666_disjunction_as
n00677_call_builtin_icon_β:
                                                                                        jmp   n00666_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00641_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00678_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00679_var_α
n00641_lit_string_β:
                                                                                        jmp   n00636_disjunction_af
.Lx00678_0:
                        .quad            .Lx00678_0_s
.Lx00678_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00679_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00680_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00680_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn1336:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1336]                        # fn
                        lea              rsi, [rbp + 1536]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n00636_disjunction_af
                                                                                        jmp   n00636_disjunction_as
n00680_call_builtin_icon_β:
                                                                                        jmp   n00636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00640_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00681_call_builtin_icon_α
n00640_var_β:
                                                                                        jmp   n00636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00681_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn1340:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1340]                        # fn
                        lea              rsi, [rbp + 1472]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n00636_disjunction_af
                                                                                        jmp   n00636_disjunction_as
n00681_call_builtin_icon_β:
                                                                                        jmp   n00636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00637_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00682_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00683_lit_integer_α
n00637_lit_string_β:
                                                                                        jmp   n00636_disjunction_af
.Lx00682_0:
                        .quad            .Lx00682_0_s
.Lx00682_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00683_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00684_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00685_scan_tab_α
.Lx00684_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00685_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00686_0
                        add              rax, r15
                        add              rax, 1
.Lx00686_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00686_239
                        add              rsp, 16
                                                                                        jmp   n00636_disjunction_af
.Lx00686_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00686_240
                        add              rsp, 16
                                                                                        jmp   n00636_disjunction_af
.Lx00686_240:
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
                                                                                        jmp   n00687_binop_test_α
n00685_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00687_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # lhs
                        mov              rsi, qword ptr [rbp + 1400]                    # lhs
                        mov              rdx, qword ptr [rbp + 1408]                    # rhs
                        mov              rcx, qword ptr [rbp + 1416]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00636_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]                    # d
                        mov              rsi, qword ptr [rbp + 1416]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00636_disjunction_as
n00687_binop_test_β:
                                                                                        jmp   n00636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00580_scan_α:
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00569_var_α
n00580_scan_β:
                                                                                        jmp   n00569_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00597_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00688_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00689_scan_match_α
n00597_lit_string_β:
                                                                                        jmp   n00596_disjunction_af
.Lx00688_0:
                        .quad            .Lx00688_0_s
.Lx00688_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00689_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00690_239
                        add              rsp, 16
                                                                                        jmp   n00596_disjunction_af
.Lx00690_239:
                        mov              rdi, qword ptr [rip + .Lx00690_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00690_240
                        add              rsp, 16
                                                                                        jmp   n00596_disjunction_af
.Lx00690_240:
                        mov              qword ptr [rbp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00691_scan_tab_α
.Lx00690_0:
                        .quad            .Lx00690_0_s
.Lx00690_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00691_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00692_0
                        add              rax, r15
                        add              rax, 1
.Lx00692_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00692_239
                        add              rsp, 16
                                                                                        jmp   n00596_disjunction_af
.Lx00692_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00692_240
                        add              rsp, 16
                                                                                        jmp   n00596_disjunction_af
.Lx00692_240:
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
                                                                                        jmp   n00693_lit_integer_α
n00691_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00596_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00693_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00694_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00695_scan_pos_α
.Lx00694_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00695_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00696_0
                        add              rax, r15
                        add              rax, 1
.Lx00696_0:
                        cmp              rax, 1
                                                                                        jl    n00691_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00691_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00691_scan_tab_β
                        mov              qword ptr [rbp + 2080], 3
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00697_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00697_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00571_var_α
n00697_conjunction_β:
                                                                                        jmp   n00596_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00571_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00698_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00698_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00699_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00699_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1362:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1362]                        # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n00700_var_α
                                                                                        jmp   n00701_call_builtin_icon_α
n00699_call_builtin_icon_β:
                                                                                        jmp   n00700_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00701_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn1364:             .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1364]                        # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n00700_var_α
                                                                                        jmp   n00571_var_α
n00701_call_builtin_icon_β:
                                                                                        jmp   n00700_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00700_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00702_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00702_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2768]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00703_2]
                        lea              rdx, [rip + .Lx00703_3]
                                                                                        jmp   proc_options_α
.Lx00703_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00703_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 448
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                        mov              qword ptr [1879052416], rax                    # Name__
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n00706_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00706_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00707_2
.Lx00707_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
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
                        cmp              eax, 104
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
                        cmp              eax, 104
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
                        mov              rdi, qword ptr [rip + .Lx00716_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00717_var_α
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00718_assign_α
.Lx00716_0:
                        .quad            .Lx00716_0_s
.Lx00716_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00718_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052384], rax                    # Save__
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n00717_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00717_var_α:
                        mov              rdi, qword ptr [rip + .Lx00719_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00720_lit_integer_α
                        mov              qword ptr [rbp + 80], rax                      # result
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00721_assign_α
.Lx00719_0:
                        .quad            .Lx00719_0_s
.Lx00719_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00721_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052400], rax                    # Saves__
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n00720_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00720_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00722_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00723_assign_α
.Lx00722_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00723_assign_α:
                        mov              rsi, qword ptr [rbp + 64]                      # val
                        mov              rdx, qword ptr [rbp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx00724_0]               # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00725_assign_α
.Lx00724_0:
                        .quad            .Lx00724_0_s
.Lx00724_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00725_assign_α:
                        mov              rsi, qword ptr [rbp + 48]                      # val
                        mov              rdx, qword ptr [rbp + 56]                      # val
                        mov              rdi, qword ptr [rip + .Lx00726_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00727_return_α
.Lx00726_0:
                        .quad            .Lx00726_0_s
.Lx00726_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00727_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00728_conjunction_α:
                                                                                        jmp   n00712_disjunction_as
n00728_conjunction_β:
                                                                                        jmp   n00715_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00713_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00729_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00730_call_builtin_icon_α
n00713_lit_string_β:
                                                                                        jmp   n00712_disjunction_af
.Lx00729_0:
                        .quad            .Lx00729_0_s
.Lx00729_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00730_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1411:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1411]                        # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00712_disjunction_af
                                                                                        jmp   n00731_lit_string_α
n00730_call_builtin_icon_β:
                                                                                        jmp   n00712_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00731_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00732_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00733_call_builtin_icon_α
.Lx00732_0:
                        .quad            .Lx00732_0_s
.Lx00732_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00733_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1414:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1414]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00734_return_α
                                                                                        jmp   n00734_return_α
n00733_call_builtin_icon_β:
                                                                                        jmp   n00734_return_α
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 464]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00735_2]
                        lea              rdx, [rip + .Lx00735_3]
                                                                                        jmp   proc_Init___α
.Lx00735_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00735_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 496
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
n00737_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00740_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00741_call_builtin_icon_α
n00737_lit_string_β:
                                                                                        jmp   n00742_var_α
.Lx00740_0:
                        .quad            .Lx00740_0_s
.Lx00740_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00741_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1438:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1438]                        # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n00742_var_α
                                                                                        jmp   n00736_disjunction_af
n00741_call_builtin_icon_β:
                                                                                        jmp   n00742_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00742_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00743_var_α
n00742_var_β:
                                                                                        jmp   n00736_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00743_var_α:
                        mov              rax, qword ptr [1879052384]                    # Save__
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 352], rax                     # result
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00744_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00744_assign_α:
                        mov              rsi, qword ptr [rbp + 352]                     # val
                        mov              rdx, qword ptr [rbp + 360]                     # val
                        mov              rdi, qword ptr [rip + .Lx00745_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00746_var_α
.Lx00745_0:
                        .quad            .Lx00745_0_s
.Lx00745_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00746_var_α:
                        mov              rax, qword ptr [1879052400]                    # Saves__
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 320], rax                     # result
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00747_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00747_assign_α:
                        mov              rsi, qword ptr [rbp + 320]                     # val
                        mov              rdx, qword ptr [rbp + 328]                     # val
                        mov              rdi, qword ptr [rip + .Lx00748_0]               # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00749_conjunction_α
.Lx00748_0:
                        .quad            .Lx00748_0_s
.Lx00748_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00749_conjunction_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00736_disjunction_as
n00749_conjunction_β:
                                                                                        jmp   n00739_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00739_var_α:
                        mov              rax, qword ptr [1879052416]                    # Name__
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00750_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00750_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00751_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00752_call_proc_staged_α
.Lx00751_0:
                        .quad            .Lx00751_0_s
.Lx00751_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00752_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00753_2
.Lx00753_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00754_call_proc_staged_α
                                                                                        jmp   n00755_call_builtin_icon_α
n00752_call_proc_staged_β:
                                                                                        jmp   n00754_call_proc_staged_α
.Lx00753_0:
                        .quad            .Lx00753_0_s
.Lx00753_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00755_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1450:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1450]                        # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n00754_call_proc_staged_α
                                                                                        jmp   n00754_call_proc_staged_α
n00755_call_builtin_icon_β:
                                                                                        jmp   n00754_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00754_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00756_2
.Lx00756_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00757_call_proc_staged_α
                                                                                        jmp   n00757_call_proc_staged_α
n00754_call_proc_staged_β:
                                                                                        jmp   n00757_call_proc_staged_α
.Lx00756_0:
                        .quad            .Lx00756_0_s
.Lx00756_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00757_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00758_2
.Lx00758_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n00759_call_proc_staged_α
                                                                                        jmp   n00759_call_proc_staged_α
n00757_call_proc_staged_β:
                                                                                        jmp   n00759_call_proc_staged_α
.Lx00758_0:
                        .quad            .Lx00758_0_s
.Lx00758_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00759_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00760_2
.Lx00760_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00761_return_α
                                                                                        jmp   n00761_return_α
n00759_call_proc_staged_β:
                                                                                        jmp   n00761_return_α
.Lx00760_0:
                        .quad            .Lx00760_0_s
.Lx00760_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00761_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 512]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00762_2]
                        lea              rdx, [rip + .Lx00762_3]
                                                                                        jmp   proc_Term___α
.Lx00762_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00762_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 928
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
n00767_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00768_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00768_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00769_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00769_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00770_1:
                        mov              rdi, qword ptr [rip + .Lx00770_0]               # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00771_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00772_call_builtin_icon_α
n00769_keyword_icon_gen_β:
                                                                                        jmp   .Lx00770_1
.Lx00770_0:
                        .quad            .Lx00770_0_s
.Lx00770_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00772_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1505:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1505]                        # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00769_keyword_icon_gen_β
                                                                                        jmp   n00769_keyword_icon_gen_β
n00772_call_builtin_icon_β:
                                                                                        jmp   n00769_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00771_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00773_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00774_call_builtin_icon_α
.Lx00773_0:
                        .quad            .Lx00773_0_s
.Lx00773_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00774_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1508:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1508]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00775_lit_integer_α
                                                                                        jmp   n00775_lit_integer_α
n00774_call_builtin_icon_β:
                                                                                        jmp   n00775_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00775_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00776_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00777_var_α
.Lx00776_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00777_var_α:
                        mov              rax, qword ptr [1879052496]                    # Collections____STATIC__labels
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00778_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00778_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00779_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00779_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00780_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00781_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00782_assign_α
n00779_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00780_0
#-----------------------------------------------------------------------------------------------------------------------
n00782_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00783_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00783_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00784_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00784_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                                # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00785_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00785_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00786_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00786_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00787_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00788_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00788_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00787_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00789_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00789_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00790_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00790_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00791_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00791_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00787_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00792_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00792_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00787_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00793_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00793_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00794_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00795_call_builtin_icon_α
.Lx00794_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00795_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1531:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1531]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00787_unmark_α
                                                                                        jmp   n00796_call_builtin_icon_α
n00795_call_builtin_icon_β:
                                                                                        jmp   n00787_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00796_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1533:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1533]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00787_unmark_α
                                                                                        jmp   n00787_unmark_α
n00796_call_builtin_icon_β:
                                                                                        jmp   n00787_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00787_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00779_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00781_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00764_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                                # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00797_nulltest_var_α
n00764_var_ref_β:
                                                                                        jmp   n00763_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00797_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 104
                                                                                        je    n00763_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]                     # d
                        mov              rsi, qword ptr [rbp + 824]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00763_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00763_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00798_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00798_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00799_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00800_assign_var_α
.Lx00799_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00800_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]                     # var
                        mov              rsi, qword ptr [rbp + 840]                     # var
                        mov              rdx, qword ptr [rbp + 864]                     # val
                        mov              rcx, qword ptr [rbp + 872]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00763_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00801_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00801_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00802_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00803_lit_string_α
.Lx00802_0:
                        .quad            .Lx00802_0_s
.Lx00802_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00803_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00804_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00805_lit_string_α
.Lx00804_0:
                        .quad            .Lx00804_0_s
.Lx00804_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00805_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00806_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00807_lit_string_α
.Lx00806_0:
                        .quad            .Lx00806_0_s
.Lx00806_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00807_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00808_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00809_make_list_α
.Lx00808_0:
                        .quad            .Lx00808_0_s
.Lx00808_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00809_make_list_α:
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
                                                                                        jmp   n00810_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00810_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052496], rax                    # Collections____STATIC__labels
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00763_disjunction_as
n00810_assign_β:
                                                                                        jmp   n00766_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 944]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00811_2]
                        lea              rdx, [rip + .Lx00811_3]
                                                                                        jmp   proc_Collections___α
.Lx00811_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00811_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
n00816_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00817_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00817_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00818_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00818_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00819_1:
                        mov              rdi, qword ptr [rip + .Lx00819_0]               # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00820_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00821_call_builtin_icon_α
n00818_keyword_icon_gen_β:
                                                                                        jmp   .Lx00819_1
.Lx00819_0:
                        .quad            .Lx00819_0_s
.Lx00819_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00821_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1595:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1595]                        # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00818_keyword_icon_gen_β
                                                                                        jmp   n00818_keyword_icon_gen_β
n00821_call_builtin_icon_β:
                                                                                        jmp   n00818_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00820_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00822_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00823_call_builtin_icon_α
.Lx00822_0:
                        .quad            .Lx00822_0_s
.Lx00822_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00823_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1598:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1598]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00824_lit_integer_α
                                                                                        jmp   n00824_lit_integer_α
n00823_call_builtin_icon_β:
                                                                                        jmp   n00824_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00824_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00825_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00826_var_α
.Lx00825_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00826_var_α:
                        mov              rax, qword ptr [1879052528]                    # Regions____STATIC__labels
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00827_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00827_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00828_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00828_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00829_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00830_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00831_assign_α
n00828_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00829_0
#-----------------------------------------------------------------------------------------------------------------------
n00831_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00832_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00832_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00833_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00833_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052528                                # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00834_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00835_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00835_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00836_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00837_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00837_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00836_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00838_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00838_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00839_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00839_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00840_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00840_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00836_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00841_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00841_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00836_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00842_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00842_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00843_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00844_call_builtin_icon_α
.Lx00843_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00844_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1621:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1621]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00836_unmark_α
                                                                                        jmp   n00845_call_builtin_icon_α
n00844_call_builtin_icon_β:
                                                                                        jmp   n00836_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00845_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1623:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1623]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00836_unmark_α
                                                                                        jmp   n00836_unmark_α
n00845_call_builtin_icon_β:
                                                                                        jmp   n00836_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00836_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00828_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00830_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00813_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052544                                # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00846_nulltest_var_α
n00813_var_ref_β:
                                                                                        jmp   n00812_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00846_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00812_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00812_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00812_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00847_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00847_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00848_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00849_assign_var_α
.Lx00848_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00849_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00812_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00850_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00850_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00851_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00852_lit_string_α
.Lx00851_0:
                        .quad            .Lx00851_0_s
.Lx00851_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00852_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00853_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00854_lit_string_α
.Lx00853_0:
                        .quad            .Lx00853_0_s
.Lx00853_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00854_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00855_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00856_make_list_α
.Lx00855_0:
                        .quad            .Lx00855_0_s
.Lx00855_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00856_make_list_α:
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
                                                                                        jmp   n00857_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00857_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052528], rax                    # Regions____STATIC__labels
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00812_disjunction_as
n00857_assign_β:
                                                                                        jmp   n00815_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00858_2]
                        lea              rdx, [rip + .Lx00858_3]
                                                                                        jmp   proc_Regions___α
.Lx00858_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00858_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00859_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00860_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn1648]                        # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n00861_keyword_icon_α
                                                                                        jmp   n00861_keyword_icon_α
n00862_call_builtin_icon_β:
                                                                                        jmp   n00861_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00861_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00863_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn1651]                        # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n00864_keyword_icon_gen_α
                                                                                        jmp   n00864_keyword_icon_gen_α
n00865_call_builtin_icon_β:
                                                                                        jmp   n00864_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00864_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00866_1:
                        mov              rdi, qword ptr [rip + .Lx00866_0]               # sval
                        mov              rsi, qword ptr [rbp + 80]                      # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn1654]                        # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00869_2]
                        lea              rdx, [rip + .Lx00869_3]
                                                                                        jmp   proc_Signature___α
.Lx00869_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00869_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
n00874_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00875_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00875_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00876_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00876_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00877_1:
                        mov              rdi, qword ptr [rip + .Lx00877_0]               # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00878_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00879_call_builtin_icon_α
n00876_keyword_icon_gen_β:
                                                                                        jmp   .Lx00877_1
.Lx00877_0:
                        .quad            .Lx00877_0_s
.Lx00877_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00879_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1702:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1702]                        # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00876_keyword_icon_gen_β
                                                                                        jmp   n00876_keyword_icon_gen_β
n00879_call_builtin_icon_β:
                                                                                        jmp   n00876_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00878_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00880_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00881_call_builtin_icon_α
.Lx00880_0:
                        .quad            .Lx00880_0_s
.Lx00880_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00881_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1705:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1705]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00882_lit_integer_α
                                                                                        jmp   n00882_lit_integer_α
n00881_call_builtin_icon_β:
                                                                                        jmp   n00882_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00882_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00883_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00884_var_α
.Lx00883_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00884_var_α:
                        mov              rax, qword ptr [1879052560]                    # Storage____STATIC__labels
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00885_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00885_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00886_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00886_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00887_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00888_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00889_assign_α
n00886_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00887_0
#-----------------------------------------------------------------------------------------------------------------------
n00889_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00890_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00890_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00891_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00891_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                                # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00892_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00892_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00893_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00893_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00894_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00895_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00895_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00894_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00896_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00896_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00897_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00897_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00898_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00898_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00894_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00899_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00899_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00894_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00900_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00900_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00901_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00902_call_builtin_icon_α
.Lx00901_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00902_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1728:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1728]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00894_unmark_α
                                                                                        jmp   n00903_call_builtin_icon_α
n00902_call_builtin_icon_β:
                                                                                        jmp   n00894_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00903_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1730:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1730]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00894_unmark_α
                                                                                        jmp   n00894_unmark_α
n00903_call_builtin_icon_β:
                                                                                        jmp   n00894_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00894_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00886_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00888_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00871_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                                # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00904_nulltest_var_α
n00871_var_ref_β:
                                                                                        jmp   n00870_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00904_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00870_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00870_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00870_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00905_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00905_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00906_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00907_assign_var_α
.Lx00906_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00907_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00870_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00908_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00908_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00909_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00910_lit_string_α
.Lx00909_0:
                        .quad            .Lx00909_0_s
.Lx00909_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00910_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00911_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00912_lit_string_α
.Lx00911_0:
                        .quad            .Lx00911_0_s
.Lx00911_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00912_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00913_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00914_make_list_α
.Lx00913_0:
                        .quad            .Lx00913_0_s
.Lx00913_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00914_make_list_α:
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
                                                                                        jmp   n00915_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00915_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052560], rax                    # Storage____STATIC__labels
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00870_disjunction_as
n00915_assign_β:
                                                                                        jmp   n00873_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00916_2]
                        lea              rdx, [rip + .Lx00916_3]
                                                                                        jmp   proc_Storage___α
.Lx00916_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00916_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                        mov              rdi, qword ptr [rip + .Lx00921_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
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
n00922_var_α:
                        mov              rax, qword ptr [1879052592]                    # Time____STATIC__lasttime
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00923_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00923_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx00924_1
                        cmp              eax, 3
                                                                                        jne   .Lx00924_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx00924_0
.Lx00924_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00925_coerce_numeric_α
.Lx00924_0:
                        lea              rdi, [rbp + 64]                                # self
                        lea              rsi, [rbp + 96]                                # other
                        lea              rdx, [rbp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00925_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00925_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx00926_1
                        cmp              eax, 3
                                                                                        jne   .Lx00926_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx00926_0
.Lx00926_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00927_binop_α
.Lx00926_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 64]                                # other
                        lea              rdx, [rbp + 32]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00927_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00927_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx00928_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00928_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00929_return_α
.Lx00928_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00929_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00929_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00918_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                                # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00930_nulltest_var_α
n00918_var_ref_β:
                                                                                        jmp   n00917_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00930_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 104
                                                                                        je    n00917_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00917_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00917_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00931_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00931_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00932_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00933_assign_var_α
.Lx00932_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00933_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00917_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00934_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00934_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00935_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00920_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00936_assign_α
n00934_keyword_icon_β:
                                                                                        jmp   n00920_keyword_icon_α
.Lx00935_0:
                        .quad            .Lx00935_0_s
.Lx00935_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00936_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052592], rax                    # Time____STATIC__lasttime
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00917_disjunction_as
n00936_assign_β:
                                                                                        jmp   n00920_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00937_2]
                        lea              rdx, [rip + .Lx00937_3]
                                                                                        jmp   proc_Time___α
.Lx00937_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00937_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 3088
                        mov              qword ptr [rsp + 3064], rcx
                        mov              qword ptr [rsp + 3072], rdx
                        mov              qword ptr [rsp + 3080], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 3056
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
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
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn1937]                        # fn
                        lea              rsi, [rbp + 2704]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 104
                                                                                        je    n00957_var_ref_α
                                                                                        jmp   n00958_assign_α
n00956_call_builtin_icon_β:
                                                                                        jmp   n00957_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00958_assign_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [1879052288], rax                    # defs
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00957_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00957_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n00959_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00959_lit_string_α:
                        mov              qword ptr [rbp + 2560], 2                      # result
                        mov              dword ptr [rbp + 2564], 2
                        mov              rax, qword ptr [rip + .Lx00960_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n00961_subscript_α
.Lx00960_0:
                        .quad            .Lx00960_0_s
.Lx00960_0_s:
                        .string          "lb"
#-----------------------------------------------------------------------------------------------------------------------
n00961_subscript_α:
                        mov              rdi, qword ptr [rbp + 2544]                    # base
                        mov              rsi, qword ptr [rbp + 2552]                    # base
                        mov              rdx, qword ptr [rbp + 2560]                    # idx
                        mov              rcx, qword ptr [rbp + 2568]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00962_var_ref_α
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n00963_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00963_lit_string_α:
                        mov              qword ptr [rbp + 2672], 2                      # result
                        mov              dword ptr [rbp + 2676], 1
                        mov              rax, qword ptr [rip + .Lx00964_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n00965_make_list_α
.Lx00964_0:
                        .quad            .Lx00964_0_s
.Lx00964_0_s:
                        .string          "<"
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
                                                                                        jmp   n00966_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00966_make_list_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00967_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00967_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2576]                    # var
                        mov              rsi, qword ptr [rbp + 2584]                    # var
                        mov              rdx, qword ptr [rbp + 2608]                    # val
                        mov              rcx, qword ptr [rbp + 2616]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00962_var_ref_α
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00962_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00962_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n00968_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00968_lit_string_α:
                        mov              qword ptr [rbp + 2416], 2                      # result
                        mov              dword ptr [rbp + 2420], 2
                        mov              rax, qword ptr [rip + .Lx00969_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00970_subscript_α
.Lx00969_0:
                        .quad            .Lx00969_0_s
.Lx00969_0_s:
                        .string          "rb"
#-----------------------------------------------------------------------------------------------------------------------
n00970_subscript_α:
                        mov              rdi, qword ptr [rbp + 2400]                    # base
                        mov              rsi, qword ptr [rbp + 2408]                    # base
                        mov              rdx, qword ptr [rbp + 2416]                    # idx
                        mov              rcx, qword ptr [rbp + 2424]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00971_var_ref_α
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n00972_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00972_lit_string_α:
                        mov              qword ptr [rbp + 2528], 2                      # result
                        mov              dword ptr [rbp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx00973_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n00974_make_list_α
.Lx00973_0:
                        .quad            .Lx00973_0_s
.Lx00973_0_s:
                        .string          ">"
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
                                                                                        jmp   n00975_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00975_make_list_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2480]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00976_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00976_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # var
                        mov              rsi, qword ptr [rbp + 2440]                    # var
                        mov              rdx, qword ptr [rbp + 2464]                    # val
                        mov              rcx, qword ptr [rbp + 2472]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00971_var_ref_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00971_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00971_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00977_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00977_lit_string_α:
                        mov              qword ptr [rbp + 2272], 2                      # result
                        mov              dword ptr [rbp + 2276], 2
                        mov              rax, qword ptr [rip + .Lx00978_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n00979_subscript_α
.Lx00978_0:
                        .quad            .Lx00978_0_s
.Lx00978_0_s:
                        .string          "vb"
#-----------------------------------------------------------------------------------------------------------------------
n00979_subscript_α:
                        mov              rdi, qword ptr [rbp + 2256]                    # base
                        mov              rsi, qword ptr [rbp + 2264]                    # base
                        mov              rdx, qword ptr [rbp + 2272]                    # idx
                        mov              rcx, qword ptr [rbp + 2280]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00980_var_ref_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n00981_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00981_lit_string_α:
                        mov              qword ptr [rbp + 2384], 2                      # result
                        mov              dword ptr [rbp + 2388], 1
                        mov              rax, qword ptr [rip + .Lx00982_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00983_make_list_α
.Lx00982_0:
                        .quad            .Lx00982_0_s
.Lx00982_0_s:
                        .string          "|"
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
                                                                                        jmp   n00984_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00984_make_list_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n00985_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00985_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2288]                    # var
                        mov              rsi, qword ptr [rbp + 2296]                    # var
                        mov              rdx, qword ptr [rbp + 2320]                    # val
                        mov              rcx, qword ptr [rbp + 2328]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00980_var_ref_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n00980_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00980_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00986_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00986_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 2
                        mov              rax, qword ptr [rip + .Lx00987_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n00988_subscript_α
.Lx00987_0:
                        .quad            .Lx00987_0_s
.Lx00987_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
n00988_subscript_α:
                        mov              rdi, qword ptr [rbp + 2112]                    # base
                        mov              rsi, qword ptr [rbp + 2120]                    # base
                        mov              rdx, qword ptr [rbp + 2128]                    # idx
                        mov              rcx, qword ptr [rbp + 2136]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00989_var_ref_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n00990_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00990_lit_string_α:
                        mov              qword ptr [rbp + 2240], 2                      # result
                        mov              dword ptr [rbp + 2244], 1
                        mov              rax, qword ptr [rip + .Lx00991_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00992_make_list_α
.Lx00991_0:
                        .quad            .Lx00991_0_s
.Lx00991_0_s:
                        .string          "\n"
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
                                                                                        jmp   n00993_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00993_make_list_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n00994_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00994_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2144]                    # var
                        mov              rsi, qword ptr [rbp + 2152]                    # var
                        mov              rdx, qword ptr [rbp + 2176]                    # val
                        mov              rcx, qword ptr [rbp + 2184]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00989_var_ref_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n00989_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00989_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n00995_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00995_lit_string_α:
                        mov              qword ptr [rbp + 1984], 2                      # result
                        mov              dword ptr [rbp + 1988], 0
                        mov              rax, qword ptr [rip + .Lx00996_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n00997_subscript_α
.Lx00996_0:
                        .quad            .Lx00996_0_s
.Lx00996_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00997_subscript_α:
                        mov              rdi, qword ptr [rbp + 1968]                    # base
                        mov              rsi, qword ptr [rbp + 1976]                    # base
                        mov              rdx, qword ptr [rbp + 1984]                    # idx
                        mov              rcx, qword ptr [rbp + 1992]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00998_var_ref_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n00999_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00999_lit_string_α:
                        mov              qword ptr [rbp + 2096], 2                      # result
                        mov              dword ptr [rbp + 2100], 0
                        mov              rax, qword ptr [rip + .Lx01000_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n01001_make_list_α
.Lx01000_0:
                        .quad            .Lx01000_0_s
.Lx01000_0_s:
                        .string          ""
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
                                                                                        jmp   n01002_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01002_make_list_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n01003_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01003_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2000]                    # var
                        mov              rsi, qword ptr [rbp + 2008]                    # var
                        mov              rdx, qword ptr [rbp + 2032]                    # val
                        mov              rcx, qword ptr [rbp + 2040]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00998_var_ref_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00998_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00998_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n01004_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01004_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 6
                        mov              rax, qword ptr [rip + .Lx01005_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n01006_subscript_α
.Lx01005_0:
                        .quad            .Lx01005_0_s
.Lx01005_0_s:
                        .string          "&lcase"
#-----------------------------------------------------------------------------------------------------------------------
n01006_subscript_α:
                        mov              rdi, qword ptr [rbp + 1776]                    # base
                        mov              rsi, qword ptr [rbp + 1784]                    # base
                        mov              rdx, qword ptr [rbp + 1792]                    # idx
                        mov              rcx, qword ptr [rbp + 1800]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n01007_var_ref_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n01008_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n01008_lit_charset_α:
                        mov              qword ptr [rbp + 1952], 2                      # result
                        mov              dword ptr [rbp + 1956], -1
                        mov              rax, qword ptr [rip + .Lx01009_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n01010_call_α
.Lx01009_0:
                        .quad            .Lx01009_0_s
.Lx01009_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n01010_call_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn1995:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1995]                        # fn
                        lea              rsi, [rbp + 1920]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n01007_var_ref_α
                                                                                        jmp   n01011_make_list_α
n01010_call_β:
                                                                                        jmp   n01007_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01011_make_list_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n01012_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01012_make_list_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n01013_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01013_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1808]                    # var
                        mov              rsi, qword ptr [rbp + 1816]                    # var
                        mov              rdx, qword ptr [rbp + 1840]                    # val
                        mov              rcx, qword ptr [rbp + 1848]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n01007_var_ref_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n01007_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01007_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n01014_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01014_lit_string_α:
                        mov              qword ptr [rbp + 1600], 2                      # result
                        mov              dword ptr [rbp + 1604], 6
                        mov              rax, qword ptr [rip + .Lx01015_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n01016_subscript_α
.Lx01015_0:
                        .quad            .Lx01015_0_s
.Lx01015_0_s:
                        .string          "&ucase"
#-----------------------------------------------------------------------------------------------------------------------
n01016_subscript_α:
                        mov              rdi, qword ptr [rbp + 1584]                    # base
                        mov              rsi, qword ptr [rbp + 1592]                    # base
                        mov              rdx, qword ptr [rbp + 1600]                    # idx
                        mov              rcx, qword ptr [rbp + 1608]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n01017_var_ref_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n01018_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n01018_lit_charset_α:
                        mov              qword ptr [rbp + 1760], 2                      # result
                        mov              dword ptr [rbp + 1764], -1
                        mov              rax, qword ptr [rip + .Lx01019_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n01020_call_α
.Lx01019_0:
                        .quad            .Lx01019_0_s
.Lx01019_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n01020_call_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn2007:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2007]                        # fn
                        lea              rsi, [rbp + 1728]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n01017_var_ref_α
                                                                                        jmp   n01021_make_list_α
n01020_call_β:
                                                                                        jmp   n01017_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01021_make_list_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n01022_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01022_make_list_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n01023_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01023_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1616]                    # var
                        mov              rsi, qword ptr [rbp + 1624]                    # var
                        mov              rdx, qword ptr [rbp + 1648]                    # val
                        mov              rcx, qword ptr [rbp + 1656]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n01017_var_ref_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n01017_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01017_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # defs
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n01024_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01024_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 6
                        mov              rax, qword ptr [rip + .Lx01025_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n01026_subscript_α
.Lx01025_0:
                        .quad            .Lx01025_0_s
.Lx01025_0_s:
                        .string          "&digit"
#-----------------------------------------------------------------------------------------------------------------------
n01026_subscript_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # base
                        mov              rsi, qword ptr [rbp + 1400]                    # base
                        mov              rdx, qword ptr [rbp + 1408]                    # idx
                        mov              rcx, qword ptr [rbp + 1416]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n01027_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n01028_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n01028_lit_charset_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], -1
                        mov              rax, qword ptr [rip + .Lx01029_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n01030_call_α
.Lx01029_0:
                        .quad            .Lx01029_0_s
.Lx01029_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n01030_call_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn2019:             .string          "charset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2019]                        # fn
                        lea              rsi, [rbp + 1536]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n01027_var_α
                                                                                        jmp   n01031_make_list_α
n01030_call_β:
                                                                                        jmp   n01027_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01031_make_list_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n01032_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01032_make_list_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n01033_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01033_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1424]                    # var
                        mov              rsi, qword ptr [rbp + 1432]                    # var
                        mov              rdx, qword ptr [rbp + 1456]                    # val
                        mov              rcx, qword ptr [rbp + 1464]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n01027_var_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n01027_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01027_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n01034_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01034_lit_string_α:
                        mov              qword ptr [rbp + 1376], 2                      # result
                        mov              dword ptr [rbp + 1380], 5
                        mov              rax, qword ptr [rip + .Lx01035_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n01036_call_proc_staged_α
.Lx01035_0:
                        .quad            .Lx01035_0_s
.Lx01035_0_s:
                        .string          "tl+s+"
#-----------------------------------------------------------------------------------------------------------------------
n01036_call_proc_staged_α:
                        lea              rsi, [rbp + 1360]
                        lea              rdx, [rbp + 1376]
                        call             proc_options_dcα
                                                                                        jmp   .Lx01037_2
.Lx01037_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n01038_disjunction_α
                                                                                        jmp   n01039_assign_α
n01036_call_proc_staged_β:
                                                                                        jmp   n01038_disjunction_α
.Lx01037_0:
                        .quad            .Lx01037_0_s
.Lx01037_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n01039_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n01038_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01038_disjunction_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0
                                                                                        jmp   n01040_var_ref_α
n01038_disjunction_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        jne   .Lx01041_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n01042_assign_α
.Lx01041_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01041_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n01042_assign_α
.Lx01041_1:
                                                                                        jmp   n01042_assign_α
n01038_disjunction_β:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        je    n01038_disjunction_af
                                                                                        jmp   n01038_disjunction_af
n01038_disjunction_af:
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1
                                                                                        je    n01043_lit_integer_α
                                                                                        jmp   n01044_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01042_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052336], rax                    # limit
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n01044_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01044_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n01045_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01045_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx01046_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n01047_subscript_α
.Lx01046_0:
                        .quad            .Lx01046_0_s
.Lx01046_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n01047_subscript_α:
                        mov              rdi, qword ptr [rbp + 1104]                    # base
                        mov              rsi, qword ptr [rbp + 1112]                    # base
                        mov              rdx, qword ptr [rbp + 1120]                    # idx
                        mov              rcx, qword ptr [rbp + 1128]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n01048_var_ref_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n01049_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01049_deref_α:
                        mov              rdi, qword ptr [rbp + 1136]                    # d
                        mov              rsi, qword ptr [rbp + 1144]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n01048_var_ref_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n01050_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01050_unop_test_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 104
                                                                                        je    n01048_var_ref_α
                        cmp              eax, 0
                                                                                        je    n01048_var_ref_α
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n01051_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01051_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [1879052368], rax                    # tswitch
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n01048_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01048_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n01052_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01052_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 1
                        mov              rax, qword ptr [rip + .Lx01053_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n01054_subscript_α
.Lx01053_0:
                        .quad            .Lx01053_0_s
.Lx01053_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n01054_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # base
                        mov              rsi, qword ptr [rbp + 1032]                    # base
                        mov              rdx, qword ptr [rbp + 1040]                    # idx
                        mov              rcx, qword ptr [rbp + 1048]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n01055_keyword_icon_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n01056_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01056_deref_α:
                        mov              rdi, qword ptr [rbp + 1056]                    # d
                        mov              rsi, qword ptr [rbp + 1064]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n01055_keyword_icon_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n01057_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01057_unop_test_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 104
                                                                                        je    n01055_keyword_icon_α
                        cmp              eax, 0
                                                                                        je    n01055_keyword_icon_α
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n01058_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01058_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1008]                    # v
                        mov              rsi, qword ptr [rbp + 1016]                    # v
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 104
                                                                                        je    n01055_keyword_icon_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n01055_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01055_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx01059_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n01060_lit_string_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n01061_make_list_α
n01055_keyword_icon_β:
                                                                                        jmp   n01060_lit_string_α
.Lx01059_0:
                        .quad            .Lx01059_0_s
.Lx01059_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n01061_make_list_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n01062_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01062_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [1879052304], rax                    # ifile
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n01060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01060_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 0
                        mov              rax, qword ptr [rip + .Lx01063_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n01064_assign_α
.Lx01063_0:
                        .quad            .Lx01063_0_s
.Lx01063_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n01064_assign_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [1879052352], rax                    # prompt
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n01065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01065_var_α:
                        mov              rax, qword ptr [1879052304]                    # ifile
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 128], rax                     # result
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n01066_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01066_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn2056:             .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2056]                        # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n01067_call_proc_staged_α
                                                                                        jmp   n01068_assign_α
n01066_call_builtin_icon_β:
                                                                                        jmp   n01067_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01068_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052320], rax                    # in
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n01069_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01069_disjunction_α:
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0
                                                                                        jmp   n01070_var_α
n01069_disjunction_as:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        jne   .Lx01071_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n01072_disjunction_α
.Lx01071_0:
                                                                                        jmp   n01072_disjunction_α
n01069_disjunction_β:
                        mov              eax, dword ptr [rbp + 768]
                                                                                        jmp   n01072_disjunction_α
n01069_disjunction_af:
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                                                                                        jmp   n01072_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01070_var_α:
                        mov              rax, qword ptr [1879052352]                    # prompt
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 880], rax                     # result
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n01073_unop_α
n01070_var_β:
                                                                                        jmp   n01069_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01073_unop_α:
                        mov              rdi, qword ptr [rbp + 880]                     # lo
                        mov              rsi, qword ptr [rbp + 888]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n01074_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n01074_lit_integer_α:
                        mov              qword ptr [rbp + 896], 3                       # result
                        mov              rax, qword ptr [rip + .Lx01075_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n01076_binop_test_α
.Lx01075_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n01076_binop_test_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 112
                                                                                        je    .Lx01077_0
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 112
                                                                                        je    .Lx01077_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 3
                                                                                        jne   .Lx01077_2
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx01077_2
.Lx01077_1:
                        mov              rax, qword ptr [rbp + 872]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx
                                                                                        je    n01069_disjunction_af
                        mov              rcx, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rcx
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rcx
                                                                                        jmp   n01078_var_α
.Lx01077_0:
                        mov              rdi, qword ptr [rbp + 864]                     # a
                        mov              rsi, qword ptr [rbp + 872]                     # a
                        mov              rdx, qword ptr [rbp + 896]                     # b
                        mov              rcx, qword ptr [rbp + 904]                     # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 848]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx01077_1
                        cmp              eax, 1
                                                                                        je    n01069_disjunction_af
                                                                                        jmp   n01078_var_α
.Lx01077_2:
                        mov              rdi, qword ptr [rbp + 864]                     # lhs
                        mov              rsi, qword ptr [rbp + 872]                     # lhs
                        mov              rdx, qword ptr [rbp + 896]                     # rhs
                        mov              rcx, qword ptr [rbp + 904]                     # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01069_disjunction_af
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n01078_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01078_var_α:
                        mov              rax, qword ptr [1879052352]                    # prompt
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 832], rax                     # result
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n01079_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01079_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn2066:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2066]                        # fn
                        lea              rsi, [rbp + 800]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n01072_disjunction_α
                                                                                        jmp   n01069_disjunction_as
n01079_call_builtin_icon_β:
                                                                                        jmp   n01072_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01072_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n01080_var_α
n01072_disjunction_as:
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
n01072_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n01072_disjunction_af
                                                                                        jmp   n01072_disjunction_af
n01072_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n01083_goto_α
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01082_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01084_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3008]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n01085_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n01085_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx01086_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n01087_subscript_α
.Lx01086_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n01087_subscript_α:
                        mov              rdi, qword ptr [rbp + 400]                     # base
                        mov              rsi, qword ptr [rbp + 408]                     # base
                        mov              rdx, qword ptr [rbp + 416]                     # idx
                        mov              rcx, qword ptr [rbp + 424]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n01088_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n01089_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01089_deref_α:
                        mov              rdi, qword ptr [rbp + 432]                     # d
                        mov              rsi, qword ptr [rbp + 440]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n01088_var_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n01090_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01090_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Lx01091_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n01092_binop_test_α
.Lx01091_0:
                        .quad            .Lx01091_0_s
.Lx01091_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n01092_binop_test_α:
                        mov              rdi, qword ptr [rbp + 448]                     # lhs
                        mov              rsi, qword ptr [rbp + 456]                     # lhs
                        mov              rdx, qword ptr [rbp + 464]                     # rhs
                        mov              rcx, qword ptr [rbp + 472]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01088_var_α
                        mov              rdi, qword ptr [rbp + 464]                     # d
                        mov              rsi, qword ptr [rbp + 472]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n01093_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01093_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n01094_var_α
n01093_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx01095_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n01096_assign_α
.Lx01095_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01095_1
                                                                                        jmp   n01096_assign_α
.Lx01095_1:
                                                                                        jmp   n01096_assign_α
n01093_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        je    n01093_disjunction_af
                                                                                        jmp   n01093_disjunction_af
n01093_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 1
                                                                                        je    n01097_goto_α
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01096_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n01084_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n01097_goto_α:
                                                                                        jmp   n01088_var_α
n01097_goto_β:
                                                                                        jmp   n01088_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01094_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n01098_lit_integer_α
n01094_var_β:
                                                                                        jmp   n01093_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01098_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx01099_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n01100_lit_integer_α
.Lx01099_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n01100_lit_integer_α:
                        mov              qword ptr [rbp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx01101_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n01102_subscript_α
.Lx01101_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n01102_subscript_α:
                        mov              rdi, qword ptr [rbp + 544]                     # arr
                        mov              rsi, qword ptr [rbp + 552]                     # arr
                        mov              rdx, qword ptr [rbp + 560]                     # i
                        mov              rcx, qword ptr [rbp + 568]                     # i
                        mov              r8, qword ptr [rbp + 576]                      # j
                        mov              r9, qword ptr [rbp + 584]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n01093_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n01103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01103_var_α:
                        mov              rax, qword ptr [1879052320]                    # in
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 640], rax                     # result
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n01104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01104_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn2088:             .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2088]                        # fn
                        lea              rsi, [rbp + 608]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n01093_disjunction_af
                                                                                        jmp   n01105_binop_α
n01104_call_builtin_icon_β:
                                                                                        jmp   n01093_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01105_binop_α:
                        mov              rdi, qword ptr [rbp + 528]                     # a
                        mov              rsi, qword ptr [rbp + 536]                     # a
                        mov              rdx, qword ptr [rbp + 592]                     # b
                        mov              rcx, qword ptr [rbp + 600]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n01093_disjunction_as
n01105_binop_β:
                                                                                        jmp   n01093_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01088_var_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n01106_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n01106_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx01107_0:
                        mov              rdi, qword ptr [rbp + 272]                     # obj
                        mov              rsi, qword ptr [rbp + 280]                     # obj
                        mov              rdx, qword ptr [rbp + 256]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 104
                                                                                        je    n01069_disjunction_α
                                                                                        jmp   n01108_var_α
n01106_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx01107_0
#-----------------------------------------------------------------------------------------------------------------------
n01108_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n01109_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n01109_call_value_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              qword ptr [rbp + 320], 0
                        mov              rdi, qword ptr [rbp + 240]                     # callee
                        mov              rsi, qword ptr [rbp + 248]                     # callee
                        lea              rdx, [rbp + 304]                               # argv
                        mov              ecx, 1                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx01110_7
                        lea              rcx, [rip + .Lx01110_3]
                        lea              rdx, [rip + .Lx01110_4]
                                                                                        jmp   rax
.Lx01110_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx01110_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx01110_2
.Lx01110_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx01110_2
.Lx01110_4:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx01110_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx01110_2
.Lx01110_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx01110_2
.Lx01110_7:
                        mov              rdi, qword ptr [rbp + 240]                     # callee
                        mov              rsi, qword ptr [rbp + 248]                     # callee
                        lea              rdx, [rbp + 304]                               # argv
                        mov              ecx, 1                                         # n
                        lea              r8, [rbp + 320]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx01110_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n01106_iterate_β
                                                                                        jmp   n01111_conjunction_α
n01109_call_value_β:
                        mov              rax, qword ptr [rbp + 320]
                        cmp              rax, 1
                                                                                        jne   .Lx01110_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx01110_8:
                        lea              rdi, [rbp + 320]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n01106_iterate_β
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n01111_conjunction_α
                                                                                        jmp   n01106_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n01111_conjunction_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n01069_disjunction_α
n01111_conjunction_β:
                                                                                        jmp   n01069_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01083_goto_α:
                                                                                        jmp   n01112_var_α
n01083_goto_β:
                                                                                        jmp   n01112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01112_var_α:
                        mov              rax, qword ptr [1879052320]                    # in
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 208], rax                     # result
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n01113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01113_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn2102:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2102]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n01065_var_α
                                                                                        jmp   n01114_conjunction_α
n01113_call_builtin_icon_β:
                                                                                        jmp   n01065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01114_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n01065_var_α
n01114_conjunction_β:
                                                                                        jmp   n01065_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01080_var_α:
                        mov              rax, qword ptr [1879052320]                    # in
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 736], rax                     # result
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n01115_call_builtin_icon_α
n01080_var_β:
                                                                                        jmp   n01072_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01115_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn2106:             .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2106]                        # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n01072_disjunction_af
                                                                                        jmp   n01072_disjunction_as
n01115_call_builtin_icon_β:
                                                                                        jmp   n01072_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01067_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx01116_2
.Lx01116_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n01067_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx01116_0:
                        .quad            .Lx01116_0_s
.Lx01116_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n01043_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx01117_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n01038_disjunction_as
n01043_lit_integer_β:
                                                                                        jmp   n01038_disjunction_af
.Lx01117_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n01040_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n01118_lit_string_α
n01040_var_ref_β:
                                                                                        jmp   n01038_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01118_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx01119_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n01120_subscript_α
.Lx01119_0:
                        .quad            .Lx01119_0_s
.Lx01119_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n01120_subscript_α:
                        mov              rdi, qword ptr [rbp + 1216]                    # base
                        mov              rsi, qword ptr [rbp + 1224]                    # base
                        mov              rdx, qword ptr [rbp + 1232]                    # idx
                        mov              rcx, qword ptr [rbp + 1240]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n01038_disjunction_af
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n01121_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01121_deref_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # d
                        mov              rsi, qword ptr [rbp + 1256]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n01038_disjunction_af
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n01122_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01122_unop_test_α:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 104
                                                                                        je    n01038_disjunction_af
                        cmp              eax, 0
                                                                                        je    n01038_disjunction_af
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n01038_disjunction_as
n01122_unop_test_β:
                                                                                        jmp   n01038_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 3088]
                        mov              rcx, qword ptr [rbp + 3064]
                        mov              rbp, qword ptr [rbp + 3080]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 3088]
                        mov              rcx, qword ptr [rbp + 3072]
                        mov              rbp, qword ptr [rbp + 3080]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
