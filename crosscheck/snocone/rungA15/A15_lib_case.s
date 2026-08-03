                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwr_α
proc_lwr_α:
proc_lwr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx9_0]                  # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_keyword_snobol4_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n3_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx10_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_call_α
.Lx10_0:
                        .quad            .Lx10_0_s
.Lx10_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd12:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd12]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx11_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_lwr_γ
.Lx11_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_assign_α
n4_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 64
                                                                                        jmp   proc_lwr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_β:
                                                                                        jmp   proc_lwr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_lwr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_upr_α
proc_upr_α:
proc_upr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n16_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx23_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_keyword_snobol4_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n17_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx24_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_call_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd26:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd26]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_upr_γ
.Lx25_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_assign_α
n18_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_upr_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # upr
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 64
                                                                                        jmp   proc_upr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_β:
                                                                                        jmp   proc_upr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_upr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cap_α
proc_cap_α:
proc_cap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_lit_integer_α
.Lx47_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_call_α
.Lx48_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd50:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd50]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx49_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_cap_γ
.Lx49_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_keyword_snobol4_α
n32_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx51_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_keyword_snobol4_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n34_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx52_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_call_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd54:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd54]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx53_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   proc_cap_γ
.Lx53_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n36_var_α
n35_call_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_call_α
.Lx56_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd58:             .string          "SUBSTR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd58]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx57_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   proc_cap_γ
.Lx57_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_keyword_snobol4_α
n38_call_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx59_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_keyword_snobol4_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "UCASE"
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx60_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_call_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd62:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd62]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx61_240
                        add              rsp, 16
                        add              rsp, 192
                                                                                        jmp   proc_cap_γ
.Lx61_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_binop_α
n41_call_β:
                        add              rsp, 16
                        add              rsp, 192
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # call
                        mov              rsi, qword ptr [rsp + 120]                     # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # cap
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 224
                                                                                        jmp   proc_cap_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_β:
                                                                                        jmp   proc_cap_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cap_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_icase_α
proc_icase_α:
proc_icase_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # subject
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_call_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx75_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx75_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_6]
                        lea              rdx, [rip + .Lx75_7]
                                                                                        jmp   rax
.Lx75_6:
                        mov              rdi, qword ptr [1879052288]                    # lwr
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx75_2
.Lx75_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx75_2
.Lx75_5:
                        add              rsp, 32
.Lx75_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx75_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_icase_ω
.Lx75_240:
                                                                                        jmp   n68_var_α
n67_call_β:
                                                                                        jmp   proc_icase_ω
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # pat
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_call_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx78_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx78_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx78_6]
                        lea              rdx, [rip + .Lx78_7]
                                                                                        jmp   rax
.Lx78_6:
                        mov              rdi, qword ptr [1879052288]                    # lwr
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx78_2
.Lx78_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx78_2
.Lx78_5:
                        add              rsp, 32
.Lx78_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx78_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_icase_ω
.Lx78_240:
                                                                                        jmp   n70_call_α
n69_call_β:
                                                                                        jmp   proc_icase_ω
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd80:             .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd80]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx79_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   proc_icase_ω
.Lx79_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   proc_icase_γ
n70_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   proc_icase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_β:
                                                                                        jmp   proc_icase_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_icase_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "lwr"
.Lstartup_pp0_0:        .string          "s"
                        .align           8
.Lstartup_pnames0:
                        .quad            .Lstartup_pp0_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_lwr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "upr"
.Lstartup_pp1_0:        .string          "s"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_upr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "cap"
.Lstartup_pp2_0:        .string          "s"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_cap_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "icase"
.Lstartup_pp3_0:        .string          "subject"
.Lstartup_pp3_1:        .string          "pat"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            .Lstartup_pp3_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_icase_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "lwr"
.Lgvan1:                .string          "s"
.Lgvan2:                .string          "upr"
.Lgvan3:                .string          "cap"
.Lgvan4:                .string          "icase"
.Lgvan5:                .string          "subject"
.Lgvan6:                .string          "pat"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_lit_integer_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_call_α
.Lx142_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd144:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd144]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx143_240
                        add              rsp, 16
                                                                                        jmp   n86_statement_begin_α
.Lx143_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_statement_end_α
n84_call_β:
                        add              rsp, 16
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:
                                                                                        jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:
                                                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:
                                                                                        jmp   n89_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:
                                                                                        jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:
                                                                                        jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:
                                                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:
                                                                                        jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:
                                                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n96_call_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "HELLO WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]                    # lwr
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx167_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx167_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx167_6]
                        lea              rdx, [rip + .Lx167_7]
                                                                                        jmp   rax
.Lx167_6:
                        mov              rdi, qword ptr [1879052288]                    # lwr
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax                    # lwr
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_5:
                        add              rsp, 32
.Lx167_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx167_240
                        add              rsp, 16
                                                                                        jmp   n99_statement_begin_α
.Lx167_240:
                                                                                        jmp   n97_assign_α
n96_call_β:
                                                                                        jmp   n99_statement_begin_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "lwr"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx168_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n98_statement_end_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:
                                                                                        jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n101_call_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # upr
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx175_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx175_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx175_6]
                        lea              rdx, [rip + .Lx175_7]
                                                                                        jmp   rax
.Lx175_6:
                        mov              rdi, qword ptr [1879052320]                    # upr
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx175_2
.Lx175_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # upr
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx175_2
.Lx175_5:
                        add              rsp, 32
.Lx175_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx175_240
                        add              rsp, 16
                                                                                        jmp   n104_statement_begin_α
.Lx175_240:
                                                                                        jmp   n102_assign_α
n101_call_β:
                                                                                        jmp   n104_statement_begin_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "upr"
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx176_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n103_statement_end_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:
                                                                                        jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α:
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n106_call_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "hELLO wORLD"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # cap
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx183_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx183_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx183_6]
                        lea              rdx, [rip + .Lx183_7]
                                                                                        jmp   rax
.Lx183_6:
                        mov              rdi, qword ptr [1879052336]                    # cap
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx183_2
.Lx183_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # cap
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx183_2
.Lx183_5:
                        add              rsp, 32
.Lx183_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx183_240
                        add              rsp, 16
                                                                                        jmp   n109_statement_begin_α
.Lx183_240:
                                                                                        jmp   n107_assign_α
n106_call_β:
                                                                                        jmp   n109_statement_begin_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "cap"
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx184_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n108_statement_end_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n111_lit_string_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "Hello"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n112_call_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # subject
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # pat
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]                    # icase
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx192_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx192_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052376], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx192_6]
                        lea              rdx, [rip + .Lx192_7]
                                                                                        jmp   rax
.Lx192_6:
                        mov              rdi, qword ptr [1879052352]                    # icase
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx192_2
.Lx192_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax                    # icase
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx192_2
.Lx192_5:
                        add              rsp, 48
.Lx192_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx192_240
                        add              rsp, 16
                                                                                        jmp   n115_statement_end_α
.Lx192_240:
                                                                                        jmp   n113_lit_string_α
n112_call_β:
                                                                                        jmp   n115_statement_end_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n114_assign_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "ok: icase hello"
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx194_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n115_statement_end_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:
                                                                                        jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α:
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n118_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_call_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # subject
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # pat
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]                    # icase
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx202_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx202_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052376], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx202_6]
                        lea              rdx, [rip + .Lx202_7]
                                                                                        jmp   rax
.Lx202_6:
                        mov              rdi, qword ptr [1879052352]                    # icase
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx202_2
.Lx202_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax                    # icase
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx202_2
.Lx202_5:
                        add              rsp, 48
.Lx202_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx202_240
                        add              rsp, 16
                                                                                        jmp   n122_statement_end_α
.Lx202_240:
                                                                                        jmp   n120_lit_string_α
n119_call_β:
                                                                                        jmp   n122_statement_end_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n121_assign_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "ok: icase HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx204_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n122_statement_end_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:
                                                                                        jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:
                                                                                        jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n125_lit_string_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n126_call_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # subject
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # pat
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]                    # icase
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx212_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx212_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052376], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx212_6]
                        lea              rdx, [rip + .Lx212_7]
                                                                                        jmp   rax
.Lx212_6:
                        mov              rdi, qword ptr [1879052352]                    # icase
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx212_2
.Lx212_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax                    # icase
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx212_2
.Lx212_5:
                        add              rsp, 48
.Lx212_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx212_240
                        add              rsp, 16
                                                                                        jmp   n129_statement_end_α
.Lx212_240:
                                                                                        jmp   n127_lit_string_α
n126_call_β:
                                                                                        jmp   n129_statement_end_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n128_assign_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "ok: icase HeLLo"
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx214_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n129_statement_end_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:
                                                                                        jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n132_lit_string_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n133_call_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_string
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # subject
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # pat
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052352]                    # icase
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx222_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx222_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052376], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx222_6]
                        lea              rdx, [rip + .Lx222_7]
                                                                                        jmp   rax
.Lx222_6:
                        mov              rdi, qword ptr [1879052352]                    # icase
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx222_2
.Lx222_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052352], rax                    # icase
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # subject
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx222_2
.Lx222_5:
                        add              rsp, 48
.Lx222_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx222_240
                        add              rsp, 16
                        add              rsp, 368
                                                                                        jmp   n136_lit_string_α
.Lx222_240:
                                                                                        jmp   n134_lit_string_α
n133_call_β:
                                                                                        jmp   n136_lit_string_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "icase"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_assign_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "fail: icase matched wrong string"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx224_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n138_statement_end_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rsp + 656], 2                       # result
                        mov              dword ptr [rsp + 660], 11
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n137_assign_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "no match ok"
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rsi, qword ptr [rsp + 656]                     # val
                        mov              rdx, qword ptr [rsp + 664]                     # val
                        mov              rdi, qword ptr [rip + .Lx226_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n138_statement_end_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:
                        add              rsp, 400
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
