                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
proc_foo_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_keyword_icon_α:
                        sub              rsp, 304
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
                        mov              rdi, qword ptr [rip + .Lx13_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n2_disjunction_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n1_call_builtin_icon_α
n0_keyword_icon_β:
                                                                                        jmp   n2_disjunction_α
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn15:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]                          # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n2_disjunction_α
n1_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n3_var_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx17_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n11_keyword_icon_α
.Lx17_0:
                                                                                        jmp   n11_keyword_icon_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n11_keyword_icon_α
n2_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n11_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n4_lit_integer_α
n3_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n5_binop_test_α
.Lx20_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx21_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 112
                                                                                        je    .Lx21_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx21_2
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx21_2
.Lx21_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 296]
                        cmp              rax, rcx
                                                                                        je    n2_disjunction_af
                        mov              rcx, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rcx
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rcx
                                                                                        jmp   n6_var_α
.Lx21_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 288]                     # b
                        mov              rcx, qword ptr [rbp + 296]                     # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 256]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx21_1
                        cmp              eax, 1
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n6_var_α
.Lx21_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 288]                     # rhs
                        mov              rcx, qword ptr [rbp + 296]                     # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n2_disjunction_af
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n8_coerce_numeric_α
.Lx24_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx26_1
                        cmp              eax, 3
                                                                                        jne   .Lx26_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx26_0
.Lx26_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n9_binop_α
.Lx26_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              rax, qword ptr [rbp + 216]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n10_call_proc_staged_α
.Lx27_0:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n11_keyword_icon_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n10_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        call             proc_foo_dcα
                                                                                        jmp   .Lx29_2
.Lx29_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n11_keyword_icon_α
                                                                                        jmp   n2_disjunction_as
n10_call_proc_staged_β:
                                                                                        jmp   n11_keyword_icon_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n11_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx30_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx30_240
                        add              rsp, 304
                                                                                        jmp   proc_foo_ω
.Lx30_240:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n12_call_builtin_icon_α
n11_keyword_icon_β:
                        add              rsp, 304
                                                                                        jmp   proc_foo_ω
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn32:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx31_240
                        add              rsp, 304
                                                                                        jmp   proc_foo_ω
.Lx31_240:
                        add              rsp, 304
                                                                                        jmp   proc_foo_ω
n12_call_builtin_icon_β:
                        add              rsp, 304
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_β:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_dcα:
                        pop              r11
                        sub              rsp, 448
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 400], r11
                        lea              rax, [rip + .Lx33_2]
                        mov              qword ptr [rbp + 408], rax
                        lea              rax, [rip + .Lx33_3]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 384                                       # suffix_off
                        mov              edx, 400                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_foo_α_body
.Lx33_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx33_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -432
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bar_α
proc_bar_α:
proc_bar_α_body:
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n34_keyword_icon_α:
                        sub              rsp, 224
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
                        mov              rdi, qword ptr [rip + .Lx44_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n36_lit_integer_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n35_call_builtin_icon_α
n34_keyword_icon_β:
                                                                                        jmp   n36_lit_integer_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]                          # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n36_lit_integer_α
                                                                                        jmp   n36_lit_integer_α
n35_call_builtin_icon_β:
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n37_var_α
.Lx47_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n38_to_α
#-----------------------------------------------------------------------------------------------------------------------
n38_to_α:
                        mov              rdi, qword ptr [rbp + 144]                     # v
                        mov              rsi, qword ptr [rbp + 152]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, qword ptr [rbp + 160]                     # v
                        mov              rsi, qword ptr [rbp + 168]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lx51_0:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx
                                                                                        jle   .Lx51_240
                        add              rsp, 224
                                                                                        jmp   n42_keyword_icon_α
.Lx51_240:
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n39_suspend_α
n38_to_β:
                        inc              qword ptr [rbp + 128]
                                                                                        jmp   .Lx51_0
#-----------------------------------------------------------------------------------------------------------------------
n39_suspend_α:
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 224
                                                                                        jmp   proc_bar_γ
n39_suspend_β:
                                                                                        jmp   n40_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx54_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n38_to_β
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n41_call_builtin_icon_α
n40_keyword_icon_β:
                                                                                        jmp   n38_to_β
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn56:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn56]                          # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n38_to_β
                                                                                        jmp   n38_to_β
n41_call_builtin_icon_β:
                                                                                        jmp   n38_to_β
#-----------------------------------------------------------------------------------------------------------------------
n42_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx57_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    proc_bar_ω
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n43_call_builtin_icon_α
n42_keyword_icon_β:
                                                                                        jmp   proc_bar_ω
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn59:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_bar_ω
                                                                                        jmp   proc_bar_ω
n43_call_builtin_icon_β:
                                                                                        jmp   proc_bar_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_bar_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_bar_β:
                                                                                        jmp   qword ptr [rbp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_bar_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_bar_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "foo"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "bar"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_bar_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
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
n60_keyword_icon_α:
                        sub              rsp, 304
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
                        mov              rdi, qword ptr [rip + .Lx70_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n62_lit_integer_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n61_call_builtin_icon_α
n60_keyword_icon_β:
                                                                                        jmp   n62_lit_integer_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn72:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]                          # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n62_lit_integer_α
                                                                                        jmp   n62_lit_integer_α
n61_call_builtin_icon_β:
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n63_call_proc_staged_α
.Lx73_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α:
                        lea              rsi, [rbp + 288]
                        call             proc_foo_dcα
                                                                                        jmp   .Lx75_2
.Lx75_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n64_keyword_icon_α
                                                                                        jmp   n64_keyword_icon_α
n63_call_proc_staged_β:
                                                                                        jmp   n64_keyword_icon_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n64_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx76_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n66_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n65_call_builtin_icon_α
n64_keyword_icon_β:
                                                                                        jmp   n66_lit_integer_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn78:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n66_lit_integer_α
                                                                                        jmp   n66_lit_integer_α
n65_call_builtin_icon_β:
                                                                                        jmp   n66_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n67_proc_gen_α
.Lx79_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n67_proc_gen_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx81_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx81_21
.Lx81_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx81_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx81_1
                        lea              rcx, [rip + .Lx81_3]
                        lea              rdx, [rip + .Lx81_4]
                                                                                        jmp   rax
.Lx81_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx81_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx81_2
.Lx81_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx81_2
.Lx81_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx81_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx81_2
.Lx81_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx81_2
.Lx81_1:
                        call             rt_faildescr@PLT
.Lx81_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx81_240
                        add              rsp, 304
                                                                                        jmp   n68_keyword_icon_α
.Lx81_240:
                                                                                        jmp   n67_proc_gen_β
n67_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n68_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx82_0]                 # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n69_call_builtin_icon_α
n68_keyword_icon_β:
                                                                                        jmp   main_ω
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn84:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n69_call_builtin_icon_β:
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
                        .section         .note.GNU-stack,"",@progbits
