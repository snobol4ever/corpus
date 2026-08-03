                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_init_α:
proc_LBL__stack_init_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx7_0:
                        .quad            .Lx7_0_s
.Lx7_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                                                                                        jmp   n4_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n4_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_init_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_init_β:
                                                                                        jmp   proc_LBL__stack_init_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_init_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_init_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_push_α:
proc_LBL__stack_push_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_call_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:
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
.Lrkfnzd33:             .string          "slink"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd33]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx32_240
                                                                                        jmp   n18_statement_end_α
.Lx32_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_assign_α
n16_call_β:
                                                                                        jmp   n18_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n18_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n19_statement_begin_α
#=======================================================================================================================
#         stack_push(w1)
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_field_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx40_0]                 # fname
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
.Lx40_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_assign_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # field_var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_call_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd46:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd46]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx45_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n27_save_restore_α
.Lx45_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_save_restore_α
n25_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n27_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n26_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n27_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_push_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_push_β:
                                                                                        jmp   proc_LBL__stack_push_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_push_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_push_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_pop_α:
proc_LBL__stack_pop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:
                                                                                        jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_call_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd94:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd94]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx93_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n89_save_restore_α
.Lx93_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_statement_end_α
n53_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n89_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:
                                                                                        jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:
                                                                                        jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_call_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd101:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd101]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx100_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n69_statement_begin_α
.Lx100_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_statement_end_α
n57_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:
                                                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:
                                                                                        jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_call_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd108:            .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd108]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx107_240
                        add              rsp, 16
                                                                                        jmp   n64_statement_begin_α
.Lx107_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
n61_call_β:
                        add              rsp, 16
                                                                                        jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n63_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:
                                                                                        jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n66_call_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd116:            .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd116]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx115_240
                        add              rsp, 16
                                                                                        jmp   n88_save_restore_α
.Lx115_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_assign_α
n66_call_β:
                        add              rsp, 16
                                                                                        jmp   n88_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                                                                                        jmp   n88_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 624], rax                     # result
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n71_call_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn124:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]                         # fn
                        lea              rsi, [rsp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n76_statement_begin_α
                                                                                        jmp   n72_var_α
n71_call_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 688], rax                     # result
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n73_call_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn127:              .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]                         # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n76_statement_begin_α
                                                                                        jmp   n74_assign_var_α
n73_call_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_var_α:
                        mov              rdi, qword ptr [rsp + 576]                     # var
                        mov              rsi, qword ptr [rsp + 584]                     # var
                        mov              rdx, qword ptr [rsp + 640]                     # val
                        mov              rcx, qword ptr [rsp + 648]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n76_statement_begin_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 768], rax                     # result
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n78_call_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn135:              .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]                         # fn
                        lea              rsi, [rsp + 736]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n81_statement_begin_α
                                                                                        jmp   n79_assign_α
n78_call_β:
                                                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:
                                                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rsp + 832], 2                       # result
                        mov              dword ptr [rsp + 836], 5
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n83_call_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn143:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]                         # fn
                        lea              rsi, [rsp + 800]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n86_lit_string_α
                                                                                        jmp   n84_assign_α
n83_call_β:
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rsp + 32], 2                        # result
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n87_call_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn149:              .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]                         # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n89_save_restore_α
                                                                                        jmp   n88_save_restore_α
n87_call_β:
                                                                                        jmp   n89_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n88_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n89_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_pop_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_pop_β:
                                                                                        jmp   proc_LBL__stack_pop_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_pop_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_pop_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_peek_α:
proc_LBL__stack_peek_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α:
                                                                                        jmp   n155_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n156_call_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd169:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd169]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n164_save_restore_α
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n157_statement_end_α
n156_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n164_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:
                                                                                        jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:
                                                                                        jmp   n159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n160_call_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd176:            .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd176]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx175_240
                        add              rsp, 16
                                                                                        jmp   n163_save_restore_α
.Lx175_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n161_assign_α
n160_call_β:
                        add              rsp, 16
                                                                                        jmp   n163_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # stack_peek
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n162_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:
                                                                                        jmp   n163_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n163_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n164_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_peek_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_peek_β:
                                                                                        jmp   proc_LBL__stack_peek_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_peek_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_peek_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_top_α:
proc_LBL__stack_top_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n186_call_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd201:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd201]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx200_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n196_save_restore_α
.Lx200_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n187_statement_end_α
n186_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n196_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α:
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n190_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_field_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx207_0]                # fname
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx207_240
                        add              rsp, 16
                                                                                        jmp   n193_lit_string_α
.Lx207_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n191_assign_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # field_var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # stack_top
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n192_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:
                                                                                        jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n194_call_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd213:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd213]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx212_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n196_save_restore_α
.Lx212_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n195_save_restore_α
n194_call_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n196_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n195_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n196_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_top_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_top_β:
                                                                                        jmp   proc_LBL__stack_top_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_top_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_top_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_depth_α:
proc_LBL__stack_depth_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:
                                                                                        jmp   n219_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n220_assign_α
.Lx244_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n221_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:
                                                                                        jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α:
                                                                                        jmp   n223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n224_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n225_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:
                                                                                        jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_begin_α:
                                                                                        jmp   n227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n228_call_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd258:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd258]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx257_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n241_save_restore_α
.Lx257_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n229_statement_end_α
n228_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n241_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:
                                                                                        jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α:
                                                                                        jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n233_binop_α
.Lx264_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx265_240
                        add              rsp, 16
                                                                                        jmp   n236_statement_begin_α
.Lx265_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n234_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n235_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:
                                                                                        jmp   n236_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α:
                                                                                        jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n238_call_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd273:            .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd273]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx272_240
                                                                                        jmp   n240_statement_end_α
.Lx272_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n239_assign_α
n238_call_β:
                                                                                        jmp   n240_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n240_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_depth_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_depth_β:
                                                                                        jmp   proc_LBL__stack_depth_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_depth_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__stack_depth_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stack_init_α
proc_stack_init_α:
proc_stack_init_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n279_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n280_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n280_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx284_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx284_1
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "stack_init"
.Lx284_1:
                                                                                        jmp   proc_stack_init_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_init_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_init_β:
                                                                                        jmp   proc_stack_init_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_init_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_init_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stack_push_α
proc_stack_push_α:
proc_stack_push_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n285_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n286_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n286_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx290_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx290_1
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "stack_push"
.Lx290_1:
                                                                                        jmp   proc_stack_push_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_push_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_push_β:
                                                                                        jmp   proc_stack_push_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_push_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_push_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stack_pop_α
proc_stack_pop_α:
proc_stack_pop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n291_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n292_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n292_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx296_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx296_1
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "stack_pop"
.Lx296_1:
                                                                                        jmp   proc_stack_pop_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_pop_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_pop_β:
                                                                                        jmp   proc_stack_pop_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_pop_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_pop_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stack_peek_α
proc_stack_peek_α:
proc_stack_peek_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n297_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n298_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx302_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx302_1
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "stack_peek"
.Lx302_1:
                                                                                        jmp   proc_stack_peek_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_peek_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_peek_β:
                                                                                        jmp   proc_stack_peek_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_peek_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_peek_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stack_top_α
proc_stack_top_α:
proc_stack_top_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n303_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n304_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx308_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx308_1
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "stack_top"
.Lx308_1:
                                                                                        jmp   proc_stack_top_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_top_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_top_β:
                                                                                        jmp   proc_stack_top_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_top_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_top_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stack_depth_α
proc_stack_depth_α:
proc_stack_depth_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n309_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n310_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx314_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx314_1
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "stack_depth"
.Lx314_1:
                                                                                        jmp   proc_stack_depth_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_depth_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_depth_β:
                                                                                        jmp   proc_stack_depth_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_depth_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_stack_depth_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "slink(snext,sval)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__stack_init"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__stack_init_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__stack_push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__stack_push_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__stack_pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__stack_pop_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__stack_peek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__stack_peek_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__stack_top"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_LBL__stack_top_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__stack_depth"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_LBL__stack_depth_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "stack_init"
                        .align           8
.Lstartup_pnames6:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + .Lstartup_pnames6]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_stack_init_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "stack_push"
.Lstartup_pp7_0:        .string          "x"
                        .align           8
.Lstartup_pnames7:
                        .quad            .Lstartup_pp7_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + .Lstartup_pnames7]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_stack_push_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "stack_pop"
.Lstartup_pp8_0:        .string          "var"
                        .align           8
.Lstartup_pnames8:
                        .quad            .Lstartup_pp8_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + .Lstartup_pnames8]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_stack_pop_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "stack_peek"
                        .align           8
.Lstartup_pnames9:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + .Lstartup_pnames9]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_stack_peek_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "stack_top"
                        .align           8
.Lstartup_pnames10:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + .Lstartup_pnames10]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_stack_top_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "stack_depth"
.Lstartup_pp11_0:       .string          "sd"
                        .align           8
.Lstartup_pnames11:
                        .quad            .Lstartup_pp11_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + .Lstartup_pnames11]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_stack_depth_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "stack_init"
.Lgvan1:                .string          "stack_push"
.Lgvan2:                .string          "x"
.Lgvan3:                .string          "stack_pop"
.Lgvan4:                .string          "var"
.Lgvan5:                .string          "stack_peek"
.Lgvan6:                .string          "stack_top"
.Lgvan7:                .string          "stack_depth"
.Lgvan8:                .string          "sd"
.Lgvan9:                .string          "stk"
.Lgvan10:               .string          "dummy"
.Lgvan11:               .string          "myvar"
.Lgvan12:               .string          "subject"
.Lgvan13:               .string          "w1"
.Lgvan14:               .string          "w2"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_begin_α:
                                                                                        jmp   n316_statement_end_α
n315_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_end_α:
                                                                                        jmp   n317_statement_begin_α
n316_statement_end_β:
                                                                                        jmp   n317_statement_begin_α
#=======================================================================================================================
#         stack_push(99)
#-----------------------------------------------------------------------------------------------------------------------
n317_statement_begin_α:
                                                                                        jmp   n318_lit_string_α
n317_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n319_call_α
n318_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n321_statement_begin_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "slink(snext,sval)"
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd616:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd616]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx615_240
                                                                                        jmp   n320_statement_end_α
.Lx615_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n320_statement_end_α
n319_call_β:
                                                                                        jmp   n320_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n321_statement_begin_α
n320_statement_end_β:
                        add              rsp, 32
                                                                                        jmp   n321_statement_begin_α
#=======================================================================================================================
#         stack_push(99)
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α:
                                                                                        jmp   n322_statement_end_α
n321_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_end_α:
                                                                                        jmp   n323_statement_begin_α
n322_statement_end_β:
                                                                                        jmp   n323_statement_begin_α
#=======================================================================================================================
#         OUTPUT = myvar                  ;* 99
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_begin_α:
                                                                                        jmp   n324_statement_end_α
n323_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_end_α:
                                                                                        jmp   n325_statement_begin_α
n324_statement_end_β:
                                                                                        jmp   n325_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_begin_α:
                                                                                        jmp   n326_statement_end_α
n325_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:
                                                                                        jmp   n327_statement_begin_α
n326_statement_end_β:
                                                                                        jmp   n327_statement_begin_α
#=======================================================================================================================
#         subject = 'hello world'
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_begin_α:
                                                                                        jmp   n328_statement_end_α
n327_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:
                                                                                        jmp   n329_statement_begin_α
n328_statement_end_β:
                                                                                        jmp   n329_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_begin_α:
                                                                                        jmp   n330_statement_end_α
n329_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:
                                                                                        jmp   n331_statement_begin_α
n330_statement_end_β:
                                                                                        jmp   n331_statement_begin_α
#=======================================================================================================================
#         OUTPUT = stack_pop()            ;* hello
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_begin_α:
                                                                                        jmp   n332_statement_end_α
n331_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:
                                                                                        jmp   n333_statement_begin_α
n332_statement_end_β:
                                                                                        jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_begin_α:
                                                                                        jmp   n334_statement_end_α
n333_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_end_α:
                                                                                        jmp   n335_statement_begin_α
n334_statement_end_β:
                                                                                        jmp   n335_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_begin_α:
                                                                                        jmp   n336_statement_end_α
n335_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_end_α:
                                                                                        jmp   n337_statement_begin_α
n336_statement_end_β:
                                                                                        jmp   n337_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_begin_α:
                                                                                        jmp   n338_statement_end_α
n337_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:
                                                                                        jmp   n339_statement_begin_α
n338_statement_end_β:
                                                                                        jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α:
                                                                                        jmp   n340_statement_end_α
n339_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:
                                                                                        jmp   n341_statement_begin_α
n340_statement_end_β:
                                                                                        jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α:
                                                                                        jmp   n342_statement_end_α
n341_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_end_α:
                                                                                        jmp   n343_statement_begin_α
n342_statement_end_β:
                                                                                        jmp   n343_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_begin_α:
                                                                                        jmp   n344_statement_end_α
n343_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:
                                                                                        jmp   n345_statement_begin_α
n344_statement_end_β:
                                                                                        jmp   n345_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_begin_α:
                                                                                        jmp   n346_statement_end_α
n345_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_statement_end_α:
                                                                                        jmp   n347_statement_begin_α
n346_statement_end_β:
                                                                                        jmp   n347_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_begin_α:
                                                                                        jmp   n348_statement_end_α
n347_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_end_α:
                                                                                        jmp   n349_statement_begin_α
n348_statement_end_β:
                                                                                        jmp   n349_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_begin_α:
                                                                                        jmp   n350_lit_string_α
n349_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n351_lit_integer_α
n350_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n354_statement_begin_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n352_call_α
n351_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n354_statement_begin_α
.Lx678_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:
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
.Lrkfnzd680:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd680]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx679_240
                        add              rsp, 16
                                                                                        jmp   n354_statement_begin_α
.Lx679_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n353_statement_end_α
n352_call_β:
                        add              rsp, 16
                                                                                        jmp   n354_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_end_α:
                                                                                        jmp   n354_statement_begin_α
n353_statement_end_β:
                                                                                        jmp   n354_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n354_statement_begin_α:
                                                                                        jmp   n355_statement_end_α
n354_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:
                                                                                        jmp   n356_statement_begin_α
n355_statement_end_β:
                                                                                        jmp   n356_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_begin_α:
                                                                                        jmp   n357_call_α
n356_statement_begin_β:
                        add              rsp, 48
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx690_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx690_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx690_6]
                        lea              rdx, [rip + .Lx690_7]
                                                                                        jmp   rax
.Lx690_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx690_2
.Lx690_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx690_2
.Lx690_5:
                        add              rsp, 16
.Lx690_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx690_240
                        add              rsp, 16
                                                                                        jmp   n359_statement_begin_α
.Lx690_240:
                                                                                        jmp   n358_statement_end_α
n357_call_β:
                                                                                        jmp   n359_statement_begin_α
.Lx690_0:
                        .quad            .Lx690_0_s
.Lx690_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_end_α:
                                                                                        jmp   n359_statement_begin_α
n358_statement_end_β:
                                                                                        jmp   n359_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_begin_α:
                                                                                        jmp   n360_lit_string_α
n359_statement_begin_β:
                        add              rsp, 64
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n361_call_α
n360_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n363_statement_begin_α
.Lx695_0:
                        .quad            .Lx695_0_s
.Lx695_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx697_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx697_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx697_6]
                        lea              rdx, [rip + .Lx697_7]
                                                                                        jmp   rax
.Lx697_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx697_2
.Lx697_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx697_2
.Lx697_5:
                        add              rsp, 32
.Lx697_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx697_240
                        add              rsp, 16
                                                                                        jmp   n363_statement_begin_α
.Lx697_240:
                                                                                        jmp   n362_statement_end_α
n361_call_β:
                                                                                        jmp   n363_statement_begin_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:
                                                                                        jmp   n363_statement_begin_α
n362_statement_end_β:
                                                                                        jmp   n363_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_begin_α:
                                                                                        jmp   n364_lit_string_α
n363_statement_begin_β:
                        add              rsp, 96
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n365_call_α
n364_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n367_statement_begin_α
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx704_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx704_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx704_6]
                        lea              rdx, [rip + .Lx704_7]
                                                                                        jmp   rax
.Lx704_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx704_2
.Lx704_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx704_2
.Lx704_5:
                        add              rsp, 32
.Lx704_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx704_240
                        add              rsp, 16
                                                                                        jmp   n367_statement_begin_α
.Lx704_240:
                                                                                        jmp   n366_statement_end_α
n365_call_β:
                                                                                        jmp   n367_statement_begin_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_end_α:
                                                                                        jmp   n367_statement_begin_α
n366_statement_end_β:
                                                                                        jmp   n367_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_begin_α:
                                                                                        jmp   n368_lit_string_α
n367_statement_begin_β:
                        add              rsp, 128
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n369_call_α
n368_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n371_statement_begin_α
.Lx709_0:
                        .quad            .Lx709_0_s
.Lx709_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx711_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx711_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx711_6]
                        lea              rdx, [rip + .Lx711_7]
                                                                                        jmp   rax
.Lx711_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx711_2
.Lx711_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx711_2
.Lx711_5:
                        add              rsp, 32
.Lx711_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx711_240
                        add              rsp, 16
                                                                                        jmp   n371_statement_begin_α
.Lx711_240:
                                                                                        jmp   n370_statement_end_α
n369_call_β:
                                                                                        jmp   n371_statement_begin_α
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n370_statement_end_α:
                                                                                        jmp   n371_statement_begin_α
n370_statement_end_β:
                                                                                        jmp   n371_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_begin_α:
                                                                                        jmp   n372_call_α
n371_statement_begin_β:
                        add              rsp, 160
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx717_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx717_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx717_6]
                        lea              rdx, [rip + .Lx717_7]
                                                                                        jmp   rax
.Lx717_6:
                        mov              rdi, qword ptr [1879052400]
                        mov              rsi, qword ptr [1879052408]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx717_2
.Lx717_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx717_2
.Lx717_5:
                        add              rsp, 32
.Lx717_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx717_240
                        add              rsp, 16
                                                                                        jmp   n375_statement_begin_α
.Lx717_240:
                                                                                        jmp   n373_assign_α
n372_call_β:
                                                                                        jmp   n375_statement_begin_α
.Lx717_0:
                        .quad            .Lx717_0_s
.Lx717_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx718_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n374_statement_end_α
n373_assign_β:
                                                                                        jmp   n375_statement_begin_α
.Lx718_0:
                        .quad            .Lx718_0_s
.Lx718_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:
                                                                                        jmp   n375_statement_begin_α
n374_statement_end_β:
                                                                                        jmp   n375_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_begin_α:
                                                                                        jmp   n376_call_α
n375_statement_begin_β:
                        add              rsp, 176
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n376_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx724_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx724_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx724_6]
                        lea              rdx, [rip + .Lx724_7]
                                                                                        jmp   rax
.Lx724_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx724_2
.Lx724_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx724_2
.Lx724_5:
                        add              rsp, 32
.Lx724_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx724_240
                        add              rsp, 16
                                                                                        jmp   n379_statement_begin_α
.Lx724_240:
                                                                                        jmp   n377_assign_α
n376_call_β:
                                                                                        jmp   n379_statement_begin_α
.Lx724_0:
                        .quad            .Lx724_0_s
.Lx724_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx725_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n378_statement_end_α
n377_assign_β:
                                                                                        jmp   n379_statement_begin_α
.Lx725_0:
                        .quad            .Lx725_0_s
.Lx725_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n378_statement_end_α:
                                                                                        jmp   n379_statement_begin_α
n378_statement_end_β:
                                                                                        jmp   n379_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n379_statement_begin_α:
                                                                                        jmp   n380_call_α
n379_statement_begin_β:
                        add              rsp, 192
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx731_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx731_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx731_6]
                        lea              rdx, [rip + .Lx731_7]
                                                                                        jmp   rax
.Lx731_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx731_2
.Lx731_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx731_2
.Lx731_5:
                        add              rsp, 32
.Lx731_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx731_240
                        add              rsp, 16
                                                                                        jmp   n383_statement_begin_α
.Lx731_240:
                                                                                        jmp   n381_assign_α
n380_call_β:
                                                                                        jmp   n383_statement_begin_α
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx732_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n382_statement_end_α
n381_assign_β:
                                                                                        jmp   n383_statement_begin_α
.Lx732_0:
                        .quad            .Lx732_0_s
.Lx732_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_end_α:
                                                                                        jmp   n383_statement_begin_α
n382_statement_end_β:
                                                                                        jmp   n383_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_begin_α:
                                                                                        jmp   n384_call_α
n383_statement_begin_β:
                        add              rsp, 208
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx738_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx738_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx738_6]
                        lea              rdx, [rip + .Lx738_7]
                                                                                        jmp   rax
.Lx738_6:
                        mov              rdi, qword ptr [1879052400]
                        mov              rsi, qword ptr [1879052408]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx738_2
.Lx738_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx738_2
.Lx738_5:
                        add              rsp, 32
.Lx738_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx738_240
                        add              rsp, 16
                                                                                        jmp   n387_statement_begin_α
.Lx738_240:
                                                                                        jmp   n385_assign_α
n384_call_β:
                                                                                        jmp   n387_statement_begin_α
.Lx738_0:
                        .quad            .Lx738_0_s
.Lx738_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx739_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n386_statement_end_α
n385_assign_β:
                                                                                        jmp   n387_statement_begin_α
.Lx739_0:
                        .quad            .Lx739_0_s
.Lx739_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_end_α:
                                                                                        jmp   n387_statement_begin_α
n386_statement_end_β:
                                                                                        jmp   n387_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_begin_α:
                                                                                        jmp   n388_call_α
n387_statement_begin_β:
                        add              rsp, 224
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx745_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx745_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx745_6]
                        lea              rdx, [rip + .Lx745_7]
                                                                                        jmp   rax
.Lx745_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx745_2
.Lx745_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx745_2
.Lx745_5:
                        add              rsp, 32
.Lx745_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx745_240
                        add              rsp, 16
                                                                                        jmp   n391_statement_begin_α
.Lx745_240:
                                                                                        jmp   n389_assign_α
n388_call_β:
                                                                                        jmp   n391_statement_begin_α
.Lx745_0:
                        .quad            .Lx745_0_s
.Lx745_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx746_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n390_statement_end_α
n389_assign_β:
                                                                                        jmp   n391_statement_begin_α
.Lx746_0:
                        .quad            .Lx746_0_s
.Lx746_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n390_statement_end_α:
                                                                                        jmp   n391_statement_begin_α
n390_statement_end_β:
                                                                                        jmp   n391_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n391_statement_begin_α:
                                                                                        jmp   n392_call_α
n391_statement_begin_β:
                        add              rsp, 240
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx752_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx752_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx752_6]
                        lea              rdx, [rip + .Lx752_7]
                                                                                        jmp   rax
.Lx752_6:
                        mov              rdi, qword ptr [1879052400]
                        mov              rsi, qword ptr [1879052408]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx752_2
.Lx752_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx752_2
.Lx752_5:
                        add              rsp, 32
.Lx752_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx752_240
                        add              rsp, 16
                                                                                        jmp   n395_statement_begin_α
.Lx752_240:
                                                                                        jmp   n393_assign_α
n392_call_β:
                                                                                        jmp   n395_statement_begin_α
.Lx752_0:
                        .quad            .Lx752_0_s
.Lx752_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n393_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx753_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n394_statement_end_α
n393_assign_β:
                                                                                        jmp   n395_statement_begin_α
.Lx753_0:
                        .quad            .Lx753_0_s
.Lx753_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:
                                                                                        jmp   n395_statement_begin_α
n394_statement_end_β:
                                                                                        jmp   n395_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_begin_α:
                                                                                        jmp   n396_statement_end_α
n395_statement_begin_β:
                        add              rsp, 256
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n396_statement_end_α:
                                                                                        jmp   n397_statement_begin_α
n396_statement_end_β:
                                                                                        jmp   n397_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n397_statement_begin_α:
                                                                                        jmp   n398_call_α
n397_statement_begin_β:
                        add              rsp, 256
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n398_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx763_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx763_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx763_6]
                        lea              rdx, [rip + .Lx763_7]
                                                                                        jmp   rax
.Lx763_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx763_2
.Lx763_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx763_2
.Lx763_5:
                        add              rsp, 32
.Lx763_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx763_240
                        add              rsp, 16
                        add              rsp, 256
                                                                                        jmp   n404_statement_begin_α
.Lx763_240:
                                                                                        jmp   n399_statement_end_α
n398_call_β:
                                                                                        jmp   n404_statement_begin_α
.Lx763_0:
                        .quad            .Lx763_0_s
.Lx763_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n399_statement_end_α:
                                                                                        jmp   n400_statement_begin_α
n399_statement_end_β:
                        add              rsp, 272
                                                                                        jmp   n404_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_begin_α:
                                                                                        jmp   n401_lit_string_α
n400_statement_begin_β:
                        add              rsp, 272
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n402_assign_α
n401_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n408_statement_begin_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "FAIL: empty pop should FRETURN"
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx769_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n403_statement_end_α
n402_assign_β:
                                                                                        jmp   n408_statement_begin_α
.Lx769_0:
                        .quad            .Lx769_0_s
.Lx769_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n403_statement_end_α:
                                                                                        jmp   n408_statement_begin_α
n403_statement_end_β:
                                                                                        jmp   n408_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n404_statement_begin_α:
                                                                                        jmp   n405_lit_string_α
n404_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rsp + 1824], 2                      # result
                        mov              dword ptr [rsp + 1828], 8
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n406_assign_α
n405_lit_string_β:
                                                                                        jmp   n408_statement_begin_α
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          "empty ok"
#-----------------------------------------------------------------------------------------------------------------------
n406_assign_α:
                        mov              rsi, qword ptr [rsp + 1824]                    # val
                        mov              rdx, qword ptr [rsp + 1832]                    # val
                        mov              rdi, qword ptr [rip + .Lx775_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n407_statement_end_α
n406_assign_β:
                                                                                        jmp   n408_statement_begin_α
.Lx775_0:
                        .quad            .Lx775_0_s
.Lx775_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n407_statement_end_α:
                                                                                        jmp   n408_statement_begin_α
n407_statement_end_β:
                                                                                        jmp   n408_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_begin_α:
                                                                                        jmp   n409_statement_end_α
n408_statement_begin_β:
                        add              rsp, 288
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_statement_end_α:
                                                                                        jmp   n410_statement_begin_α
n409_statement_end_β:
                                                                                        jmp   n410_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n410_statement_begin_α:
                                                                                        jmp   n411_call_α
n410_statement_begin_β:
                        add              rsp, 288
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx785_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx785_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx785_6]
                        lea              rdx, [rip + .Lx785_7]
                                                                                        jmp   rax
.Lx785_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx785_2
.Lx785_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx785_2
.Lx785_5:
                        add              rsp, 16
.Lx785_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx785_240
                        add              rsp, 16
                                                                                        jmp   n413_statement_begin_α
.Lx785_240:
                                                                                        jmp   n412_statement_end_α
n411_call_β:
                                                                                        jmp   n413_statement_begin_α
.Lx785_0:
                        .quad            .Lx785_0_s
.Lx785_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:
                                                                                        jmp   n413_statement_begin_α
n412_statement_end_β:
                                                                                        jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α:
                                                                                        jmp   n414_lit_string_α
n413_statement_begin_β:
                        add              rsp, 304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n415_call_α
n414_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n417_statement_begin_α
.Lx790_0:
                        .quad            .Lx790_0_s
.Lx790_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n415_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx792_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx792_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx792_6]
                        lea              rdx, [rip + .Lx792_7]
                                                                                        jmp   rax
.Lx792_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx792_2
.Lx792_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx792_2
.Lx792_5:
                        add              rsp, 32
.Lx792_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx792_240
                        add              rsp, 16
                                                                                        jmp   n417_statement_begin_α
.Lx792_240:
                                                                                        jmp   n416_statement_end_α
n415_call_β:
                                                                                        jmp   n417_statement_begin_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:
                                                                                        jmp   n417_statement_begin_α
n416_statement_end_β:
                                                                                        jmp   n417_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:
                                                                                        jmp   n418_call_α
n417_statement_begin_β:
                        add              rsp, 336
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # stack_peek
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx798_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx798_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx798_6]
                        lea              rdx, [rip + .Lx798_7]
                                                                                        jmp   rax
.Lx798_6:
                        mov              rdi, qword ptr [1879052368]
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx798_2
.Lx798_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx798_2
.Lx798_5:
                        add              rsp, 16
.Lx798_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx798_240
                        add              rsp, 16
                                                                                        jmp   n421_statement_begin_α
.Lx798_240:
                                                                                        jmp   n419_assign_α
n418_call_β:
                                                                                        jmp   n421_statement_begin_α
.Lx798_0:
                        .quad            .Lx798_0_s
.Lx798_0_s:
                        .string          "stack_peek"
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx799_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n420_statement_end_α
n419_assign_β:
                                                                                        jmp   n421_statement_begin_α
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:
                                                                                        jmp   n421_statement_begin_α
n420_statement_end_β:
                                                                                        jmp   n421_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n421_statement_begin_α:
                                                                                        jmp   n422_call_α
n421_statement_begin_β:
                        add              rsp, 352
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx805_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx805_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx805_6]
                        lea              rdx, [rip + .Lx805_7]
                                                                                        jmp   rax
.Lx805_6:
                        mov              rdi, qword ptr [1879052400]
                        mov              rsi, qword ptr [1879052408]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx805_2
.Lx805_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052424], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx805_2
.Lx805_5:
                        add              rsp, 32
.Lx805_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx805_240
                        add              rsp, 16
                                                                                        jmp   n425_statement_begin_α
.Lx805_240:
                                                                                        jmp   n423_assign_α
n422_call_β:
                                                                                        jmp   n425_statement_begin_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "stack_depth"
#-----------------------------------------------------------------------------------------------------------------------
n423_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx806_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n424_statement_end_α
n423_assign_β:
                                                                                        jmp   n425_statement_begin_α
.Lx806_0:
                        .quad            .Lx806_0_s
.Lx806_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n424_statement_end_α:
                                                                                        jmp   n425_statement_begin_α
n424_statement_end_β:
                                                                                        jmp   n425_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_begin_α:
                                                                                        jmp   n426_call_α
n425_statement_begin_β:
                        add              rsp, 368
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx812_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx812_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx812_6]
                        lea              rdx, [rip + .Lx812_7]
                                                                                        jmp   rax
.Lx812_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx812_2
.Lx812_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx812_2
.Lx812_5:
                        add              rsp, 32
.Lx812_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx812_240
                        add              rsp, 16
                                                                                        jmp   n429_statement_begin_α
.Lx812_240:
                                                                                        jmp   n427_assign_α
n426_call_β:
                                                                                        jmp   n429_statement_begin_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n427_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx813_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n428_statement_end_α
n427_assign_β:
                                                                                        jmp   n429_statement_begin_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n428_statement_end_α:
                                                                                        jmp   n429_statement_begin_α
n428_statement_end_β:
                                                                                        jmp   n429_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n429_statement_begin_α:
                                                                                        jmp   n430_statement_end_α
n429_statement_begin_β:
                        add              rsp, 384
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:
                                                                                        jmp   n431_statement_begin_α
n430_statement_end_β:
                                                                                        jmp   n431_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α:
                                                                                        jmp   n432_call_α
n431_statement_begin_β:
                        add              rsp, 384
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx823_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx823_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx823_6]
                        lea              rdx, [rip + .Lx823_7]
                                                                                        jmp   rax
.Lx823_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx823_2
.Lx823_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx823_2
.Lx823_5:
                        add              rsp, 16
.Lx823_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx823_240
                        add              rsp, 16
                                                                                        jmp   n434_statement_begin_α
.Lx823_240:
                                                                                        jmp   n433_statement_end_α
n432_call_β:
                                                                                        jmp   n434_statement_begin_α
.Lx823_0:
                        .quad            .Lx823_0_s
.Lx823_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_end_α:
                                                                                        jmp   n434_statement_begin_α
n433_statement_end_β:
                                                                                        jmp   n434_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α:
                                                                                        jmp   n435_lit_integer_α
n434_statement_begin_β:
                        add              rsp, 400
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n436_call_α
n435_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n438_statement_begin_α
.Lx828_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n436_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx830_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx830_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx830_6]
                        lea              rdx, [rip + .Lx830_7]
                                                                                        jmp   rax
.Lx830_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx830_2
.Lx830_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx830_2
.Lx830_5:
                        add              rsp, 32
.Lx830_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx830_240
                        add              rsp, 16
                                                                                        jmp   n438_statement_begin_α
.Lx830_240:
                                                                                        jmp   n437_statement_end_α
n436_call_β:
                                                                                        jmp   n438_statement_begin_α
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n437_statement_end_α:
                                                                                        jmp   n438_statement_begin_α
n437_statement_end_β:
                                                                                        jmp   n438_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_begin_α:
                                                                                        jmp   n439_lit_integer_α
n438_statement_begin_β:
                        add              rsp, 432
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n440_call_α
n439_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n442_statement_begin_α
.Lx835_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n440_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx837_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx837_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx837_6]
                        lea              rdx, [rip + .Lx837_7]
                                                                                        jmp   rax
.Lx837_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx837_2
.Lx837_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx837_2
.Lx837_5:
                        add              rsp, 32
.Lx837_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx837_240
                        add              rsp, 16
                                                                                        jmp   n442_statement_begin_α
.Lx837_240:
                                                                                        jmp   n441_statement_end_α
n440_call_β:
                                                                                        jmp   n442_statement_begin_α
.Lx837_0:
                        .quad            .Lx837_0_s
.Lx837_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_end_α:
                                                                                        jmp   n442_statement_begin_α
n441_statement_end_β:
                                                                                        jmp   n442_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_begin_α:
                                                                                        jmp   n443_lit_string_α
n442_statement_begin_β:
                        add              rsp, 464
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n444_call_α
n443_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n446_statement_begin_α
.Lx842_0:
                        .quad            .Lx842_0_s
.Lx842_0_s:
                        .string          "myvar"
#-----------------------------------------------------------------------------------------------------------------------
n444_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx844_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx844_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx844_6]
                        lea              rdx, [rip + .Lx844_7]
                                                                                        jmp   rax
.Lx844_6:
                        mov              rdi, qword ptr [1879052336]                    # stack_pop
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx844_2
.Lx844_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx844_2
.Lx844_5:
                        add              rsp, 32
.Lx844_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx844_240
                        add              rsp, 16
                                                                                        jmp   n446_statement_begin_α
.Lx844_240:
                                                                                        jmp   n445_statement_end_α
n444_call_β:
                                                                                        jmp   n446_statement_begin_α
.Lx844_0:
                        .quad            .Lx844_0_s
.Lx844_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n445_statement_end_α:
                                                                                        jmp   n446_statement_begin_α
n445_statement_end_β:
                                                                                        jmp   n446_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_begin_α:
                                                                                        jmp   n447_var_α
n446_statement_begin_β:
                        add              rsp, 496
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # myvar
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n448_assign_α
n447_var_β:
                        add              rsp, 16
                                                                                        jmp   n450_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n448_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx850_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n449_statement_end_α
n448_assign_β:
                                                                                        jmp   n450_statement_begin_α
.Lx850_0:
                        .quad            .Lx850_0_s
.Lx850_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_end_α:
                                                                                        jmp   n450_statement_begin_α
n449_statement_end_β:
                                                                                        jmp   n450_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_begin_α:
                                                                                        jmp   n451_statement_end_α
n450_statement_begin_β:
                        add              rsp, 512
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_end_α:
                                                                                        jmp   n452_statement_begin_α
n451_statement_end_β:
                                                                                        jmp   n452_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n452_statement_begin_α:
                                                                                        jmp   n453_call_α
n452_statement_begin_β:
                        add              rsp, 512
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # stack_init
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx860_0]                # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx860_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx860_6]
                        lea              rdx, [rip + .Lx860_7]
                                                                                        jmp   rax
.Lx860_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx860_2
.Lx860_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx860_2
.Lx860_5:
                        add              rsp, 16
.Lx860_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx860_240
                        add              rsp, 16
                                                                                        jmp   n455_statement_begin_α
.Lx860_240:
                                                                                        jmp   n454_statement_end_α
n453_call_β:
                                                                                        jmp   n455_statement_begin_α
.Lx860_0:
                        .quad            .Lx860_0_s
.Lx860_0_s:
                        .string          "stack_init"
#-----------------------------------------------------------------------------------------------------------------------
n454_statement_end_α:
                                                                                        jmp   n455_statement_begin_α
n454_statement_end_β:
                                                                                        jmp   n455_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_begin_α:
                                                                                        jmp   n456_lit_string_α
n455_statement_begin_β:
                        add              rsp, 528
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n457_assign_α
n456_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n459_statement_begin_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n457_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # subject
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n458_statement_end_α
n457_assign_β:
                                                                                        jmp   n459_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n458_statement_end_α:
                                                                                        jmp   n459_statement_begin_α
n458_statement_end_β:
                                                                                        jmp   n459_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n459_statement_begin_α:
                                                                                        jmp   n460_var_α
n459_statement_begin_β:
                        add              rsp, 544
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]                    # subject
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n461_match_begin_α
n460_var_β:
                        add              rsp, 16
                        add              rsp, 544
                                                                                        jmp   n492_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n461_match_begin_α:
                        sub              rsp, 2432
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
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              rdi, qword ptr [rsp + 2432]                    # var
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2416], rdi
                        mov              qword ptr [rsp + 2424], rsi
                        mov              qword ptr [rsp + 2240], r13                    # outer_Σ
                        mov              qword ptr [rsp + 2248], r14                    # outer_δ
                        mov              qword ptr [rsp + 2256], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 2264], rax                    # cap_gen
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
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx873_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n462_match_sequence_α
n461_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx873_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx873_1
                                                                                        jmp   .Lx873_0
.Lx873_1:
                        mov              r10, qword ptr [1879048192]
.Lx873_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx873_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 2240]                    # outer_Σ
                        mov              r14, qword ptr [rsp + 2248]                    # outer_δ
                        mov              r15, qword ptr [rsp + 2256]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 2264]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 2992
                                                                                        jmp   n492_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n462_match_sequence_α:
                                                                                        jmp   n489_match_assign_save_α
n462_match_sequence_as:
                                                                                        jmp   n463_match_end_α
n462_match_sequence_β:
                                                                                        jmp   n487_match_assign_cond_β
n462_match_sequence_af:
                                                                                        jmp   n461_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n463_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx877_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx877_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 64]
                        mov              dword ptr [rsp + 2288], eax
                        mov              qword ptr [rsp + 2312], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx877_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx877_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx877_1:
                        test             rax, rax
                                                                                        je    .Lx877_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx877_3]
                        lea              rdx, [rip + .Lx877_4]
                                                                                        jmp   rax
.Lx877_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx877_1
.Lx877_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx877_1
.Lx877_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx877_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx877_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 2240]                    # outer_Σ
                        mov              r14, qword ptr [rsp + 2248]                    # outer_δ
                        mov              r15, qword ptr [rsp + 2256]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 2264]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n464_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n465_match_replace_α
n464_lit_string_β:
                        add              rsp, 16
                        add              rsp, 2992
                                                                                        jmp   n492_statement_begin_α
.Lx878_0:
                        .quad            .Lx878_0_s
.Lx878_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n465_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx880_0]                # name
                        mov              rsi, qword ptr [rsp + 2432]                    # sub_lo
                        mov              rdx, qword ptr [rsp + 2440]                    # sub_hi
                        mov              ecx, dword ptr [rsp + 2208]                    # start
                        mov              r8, qword ptr [rsp + 2232]                     # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx880_1
.Lx880_0:
                        .quad            .Lx880_0_s
.Lx880_0_s:
                        .string          "subject"
.Lx880_1:
                                                                                        jmp   n466_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:
                                                                                        jmp   n467_statement_begin_α
n466_statement_end_β:
                        add              rsp, 3008
                                                                                        jmp   n492_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_begin_α:
                                                                                        jmp   n468_var_α
n467_statement_begin_β:
                        add              rsp, 3008
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # w1
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n469_call_α
n468_var_β:
                        add              rsp, 16
                                                                                        jmp   n471_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx887_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx887_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx887_6]
                        lea              rdx, [rip + .Lx887_7]
                                                                                        jmp   rax
.Lx887_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx887_2
.Lx887_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx887_2
.Lx887_5:
                        add              rsp, 32
.Lx887_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx887_240
                        add              rsp, 16
                                                                                        jmp   n471_statement_begin_α
.Lx887_240:
                                                                                        jmp   n470_statement_end_α
n469_call_β:
                                                                                        jmp   n471_statement_begin_α
.Lx887_0:
                        .quad            .Lx887_0_s
.Lx887_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:
                                                                                        jmp   n471_statement_begin_α
n470_statement_end_β:
                                                                                        jmp   n471_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_begin_α:
                                                                                        jmp   n472_var_α
n471_statement_begin_β:
                        add              rsp, 3040
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # w2
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n473_call_α
n472_var_β:
                        add              rsp, 16
                                                                                        jmp   n475_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n473_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # stack_push
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx894_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx894_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052328], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx894_6]
                        lea              rdx, [rip + .Lx894_7]
                                                                                        jmp   rax
.Lx894_6:
                        mov              rdi, qword ptr [1879052304]                    # stack_push
                        mov              rsi, qword ptr [1879052312]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx894_2
.Lx894_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # x
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx894_2
.Lx894_5:
                        add              rsp, 32
.Lx894_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx894_240
                        add              rsp, 16
                                                                                        jmp   n475_statement_begin_α
.Lx894_240:
                                                                                        jmp   n474_statement_end_α
n473_call_β:
                                                                                        jmp   n475_statement_begin_α
.Lx894_0:
                        .quad            .Lx894_0_s
.Lx894_0_s:
                        .string          "stack_push"
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:
                                                                                        jmp   n475_statement_begin_α
n474_statement_end_β:
                                                                                        jmp   n475_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_begin_α:
                                                                                        jmp   n476_call_α
n475_statement_begin_β:
                        add              rsp, 3072
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n476_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx900_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx900_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx900_6]
                        lea              rdx, [rip + .Lx900_7]
                                                                                        jmp   rax
.Lx900_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx900_2
.Lx900_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx900_2
.Lx900_5:
                        add              rsp, 32
.Lx900_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx900_240
                        add              rsp, 16
                                                                                        jmp   n479_statement_begin_α
.Lx900_240:
                                                                                        jmp   n477_assign_α
n476_call_β:
                                                                                        jmp   n479_statement_begin_α
.Lx900_0:
                        .quad            .Lx900_0_s
.Lx900_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n477_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx901_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n478_statement_end_α
n477_assign_β:
                                                                                        jmp   n479_statement_begin_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:
                                                                                        jmp   n479_statement_begin_α
n478_statement_end_β:
                                                                                        jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_begin_α:
                                                                                        jmp   n480_call_α
n479_statement_begin_β:
                        add              rsp, 3088
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n480_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052336]                    # stack_pop
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx907_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx907_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx907_6]
                        lea              rdx, [rip + .Lx907_7]
                                                                                        jmp   rax
.Lx907_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx907_2
.Lx907_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # var
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx907_2
.Lx907_5:
                        add              rsp, 32
.Lx907_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx907_240
                        add              rsp, 16
                                                                                        jmp   n483_statement_begin_α
.Lx907_240:
                                                                                        jmp   n481_assign_α
n480_call_β:
                                                                                        jmp   n483_statement_begin_α
.Lx907_0:
                        .quad            .Lx907_0_s
.Lx907_0_s:
                        .string          "stack_pop"
#-----------------------------------------------------------------------------------------------------------------------
n481_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx908_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n482_statement_end_α
n481_assign_β:
                                                                                        jmp   n483_statement_begin_α
.Lx908_0:
                        .quad            .Lx908_0_s
.Lx908_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_end_α:
                                                                                        jmp   n483_statement_begin_α
n482_statement_end_β:
                                                                                        jmp   n483_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_begin_α:
                                                                                        jmp   n484_statement_end_α
n483_statement_begin_β:
                        add              rsp, 3104
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_end_α:
                        add              rsp, 3104
                                                                                        jmp   main_γ
n484_statement_end_β:
                        add              rsp, 3104
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n485_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n486_match_rem_α
n485_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n488_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n486_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n487_match_assign_cond_α
n486_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n488_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n487_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n463_match_end_α
n487_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n486_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n488_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n491_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 32
                                                                                        jne   n491_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n485_match_assign_save_α
n488_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n491_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n489_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n490_match_break_α
n489_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n461_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n490_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx925_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx925_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n461_match_begin_β
.Lx925_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx925_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx925_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n461_match_begin_β
.Lx925_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx925_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx925_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n461_match_begin_β
.Lx925_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx925_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx925_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n461_match_begin_β
.Lx925_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx925_1
                        add              ecx, 1
                                                                                        jmp   .Lx925_0
.Lx925_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n491_match_assign_cond_α
n490_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n461_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n491_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n488_match_lit_α
n491_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n490_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_begin_α:
                                                                                        jmp   n493_lit_string_α
n492_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rsp + 2784], 2                      # result
                        mov              dword ptr [rsp + 2788], 26
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 2792], rax
                                                                                        jmp   n494_assign_α
n493_lit_string_β:
                                                                                        jmp   main_γ
.Lx930_0:
                        .quad            .Lx930_0_s
.Lx930_0_s:
                        .string          "FAIL: pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n494_assign_α:
                        mov              rsi, qword ptr [rsp + 2784]                    # val
                        mov              rdx, qword ptr [rsp + 2792]                    # val
                        mov              rdi, qword ptr [rip + .Lx931_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n495_statement_end_α
n494_assign_β:
                                                                                        jmp   main_γ
.Lx931_0:
                        .quad            .Lx931_0_s
.Lx931_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n495_statement_end_α:
                                                                                        jmp   main_γ
n495_statement_end_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n496_goto_α:
                                                                                        jmp   n497_statement_begin_α
n496_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_begin_α:
                                                                                        jmp   n498_lit_string_α
n497_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rsp + 176], 2                       # result
                        mov              dword ptr [rsp + 180], 0
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n499_assign_α
n498_lit_string_β:
                                                                                        jmp   n501_save_restore_α
.Lx937_0:
                        .quad            .Lx937_0_s
.Lx937_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n500_statement_end_α
n499_assign_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:
                                                                                        jmp   n501_save_restore_α
n500_statement_end_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n501_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n502_goto_α:
                                                                                        jmp   n325_statement_begin_α
n502_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n503_goto_α:
                                                                                        jmp   n504_statement_begin_α
n503_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_begin_α:
                                                                                        jmp   n505_var_α
n504_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 256], rax                     # result
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n506_var_α
n505_var_β:
                                                                                        jmp   n510_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n506_var_α:
                        mov              rax, qword ptr [1879052320]                    # x
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 272], rax                     # result
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n507_call_α
n506_var_β:
                                                                                        jmp   n510_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn950:              .string          "slink"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]                         # fn
                        lea              rsi, [rsp + 208]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n510_statement_begin_α
                                                                                        jmp   n508_assign_α
n507_call_β:
                                                                                        jmp   n510_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n508_assign_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n509_statement_end_α
n508_assign_β:
                                                                                        jmp   n510_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n509_statement_end_α:
                                                                                        jmp   n510_statement_begin_α
n509_statement_end_β:
                                                                                        jmp   n510_statement_begin_α
#=======================================================================================================================
#         stack_push(w1)
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_begin_α:
                                                                                        jmp   n511_var_α
n510_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n511_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n512_field_var_α
n511_var_β:
                        add              rsp, 16
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n512_field_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx957_0]                # fname
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx957_240
                        add              rsp, 16
                                                                                        jmp   n515_lit_string_α
.Lx957_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n513_assign_α
n512_field_var_β:
                        add              rsp, 16
                                                                                        jmp   n515_lit_string_α
.Lx957_0:
                        .quad            .Lx957_0_s
.Lx957_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n513_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # field_var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # stack_push
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n514_statement_end_α
n513_assign_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n514_statement_end_α:
                                                                                        jmp   n515_lit_string_α
n514_statement_end_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n516_call_α
n515_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n517_save_restore_α
.Lx961_0:
                        .quad            .Lx961_0_s
.Lx961_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd963:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd963]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx962_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n517_save_restore_α
.Lx962_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n501_save_restore_α
n516_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n517_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n518_goto_α:
                                                                                        jmp   n329_statement_begin_α
n518_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n519_goto_α:
                                                                                        jmp   n520_statement_begin_α
n519_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n520_statement_begin_α:
                                                                                        jmp   n521_var_α
n520_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 368], rax                     # result
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n522_call_α
n521_var_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn972:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn972]                         # fn
                        lea              rsi, [rsp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n517_save_restore_α
                                                                                        jmp   n523_statement_end_α
n522_call_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_end_α:
                                                                                        jmp   n524_statement_begin_α
n523_statement_end_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_begin_α:
                                                                                        jmp   n525_var_α
n524_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n525_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 432], rax                     # result
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n526_call_α
n525_var_β:
                                                                                        jmp   n538_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn979:              .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn979]                         # fn
                        lea              rsi, [rsp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n538_statement_begin_α
                                                                                        jmp   n527_statement_end_α
n526_call_β:
                                                                                        jmp   n538_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n527_statement_end_α:
                                                                                        jmp   n528_statement_begin_α
n527_statement_end_β:
                                                                                        jmp   n538_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_begin_α:
                                                                                        jmp   n529_var_α
n528_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n529_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 496], rax                     # result
                        mov              qword ptr [rsp + 504], rdx
                                                                                        jmp   n530_call_α
n529_var_β:
                                                                                        jmp   n533_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn986:              .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn986]                         # fn
                        lea              rsi, [rsp + 464]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n533_statement_begin_α
                                                                                        jmp   n531_assign_α
n530_call_β:
                                                                                        jmp   n533_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n531_assign_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n532_statement_end_α
n531_assign_β:
                                                                                        jmp   n533_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n532_statement_end_α:
                                                                                        jmp   n533_statement_begin_α
n532_statement_end_β:
                                                                                        jmp   n533_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n533_statement_begin_α:
                                                                                        jmp   n534_var_α
n533_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n534_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 560], rax                     # result
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n535_call_α
n534_var_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n535_call_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn994:              .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn994]                         # fn
                        lea              rsi, [rsp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n501_save_restore_α
                                                                                        jmp   n536_assign_α
n535_call_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n536_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n537_statement_end_α
n536_assign_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n537_statement_end_α:
                                                                                        jmp   n501_save_restore_α
n537_statement_end_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n538_statement_begin_α:
                                                                                        jmp   n539_var_α
n538_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 624], rax                     # result
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n540_call_α
n539_var_β:
                                                                                        jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn1002:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1002]                        # fn
                        lea              rsi, [rsp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n545_statement_begin_α
                                                                                        jmp   n541_var_α
n540_call_β:
                                                                                        jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n541_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 688], rax                     # result
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n542_call_α
n541_var_β:
                                                                                        jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n542_call_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn1005:             .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1005]                        # fn
                        lea              rsi, [rsp + 656]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n545_statement_begin_α
                                                                                        jmp   n543_assign_var_α
n542_call_β:
                                                                                        jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n543_assign_var_α:
                        mov              rdi, qword ptr [rsp + 576]                     # var
                        mov              rsi, qword ptr [rsp + 584]                     # var
                        mov              rdx, qword ptr [rsp + 640]                     # val
                        mov              rcx, qword ptr [rsp + 648]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n545_statement_begin_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                                                                                        jmp   n544_statement_end_α
n543_assign_var_β:
                                                                                        jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_end_α:
                                                                                        jmp   n545_statement_begin_α
n544_statement_end_β:
                                                                                        jmp   n545_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n545_statement_begin_α:
                                                                                        jmp   n546_var_α
n545_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n546_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 768], rax                     # result
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n547_call_α
n546_var_β:
                                                                                        jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn1013:             .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1013]                        # fn
                        lea              rsi, [rsp + 736]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n550_statement_begin_α
                                                                                        jmp   n548_assign_α
n547_call_β:
                                                                                        jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n548_assign_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [1879052432], rax                    # stk
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n549_statement_end_α
n548_assign_β:
                                                                                        jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_end_α:
                                                                                        jmp   n550_statement_begin_α
n549_statement_end_β:
                                                                                        jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_begin_α:
                                                                                        jmp   n551_lit_string_α
n550_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:
                        mov              qword ptr [rsp + 832], 2                       # result
                        mov              dword ptr [rsp + 836], 5
                        mov              rax, qword ptr [rip + .Lx1019_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n552_call_α
n551_lit_string_β:
                                                                                        jmp   n515_lit_string_α
.Lx1019_0:
                        .quad            .Lx1019_0_s
.Lx1019_0_s:
                        .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn1021:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1021]                        # fn
                        lea              rsi, [rsp + 800]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n515_lit_string_α
                                                                                        jmp   n553_assign_α
n552_call_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n553_assign_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [1879052336], rax                    # stack_pop
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n554_statement_end_α
n553_assign_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n554_statement_end_α:
                                                                                        jmp   n515_lit_string_α
n554_statement_end_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n555_goto_α:
                                                                                        jmp   n538_statement_begin_α
n555_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n556_goto_α:
                                                                                        jmp   n333_statement_begin_α
n556_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n557_goto_α:
                                                                                        jmp   n558_statement_begin_α
n557_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n558_statement_begin_α:
                                                                                        jmp   n559_var_α
n558_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n559_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n560_call_α
n559_var_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn1032:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1032]                        # fn
                        lea              rsi, [rsp + 864]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n517_save_restore_α
                                                                                        jmp   n561_statement_end_α
n560_call_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n561_statement_end_α:
                                                                                        jmp   n562_statement_begin_α
n561_statement_end_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n562_statement_begin_α:
                                                                                        jmp   n563_var_α
n562_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n563_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n564_call_α
n563_var_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n564_call_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn1039:             .string          "sval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1039]                        # fn
                        lea              rsi, [rsp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n501_save_restore_α
                                                                                        jmp   n565_assign_α
n564_call_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n565_assign_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [1879052368], rax                    # stack_peek
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n566_statement_end_α
n565_assign_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n566_statement_end_α:
                                                                                        jmp   n501_save_restore_α
n566_statement_end_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n567_goto_α:
                                                                                        jmp   n337_statement_begin_α
n567_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n568_goto_α:
                                                                                        jmp   n569_statement_begin_α
n568_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n569_statement_begin_α:
                                                                                        jmp   n570_var_α
n569_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n570_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1024], rax                    # result
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n571_call_α
n570_var_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n571_call_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn1049:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]                        # fn
                        lea              rsi, [rsp + 992]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n517_save_restore_α
                                                                                        jmp   n572_statement_end_α
n571_call_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_end_α:
                                                                                        jmp   n573_statement_begin_α
n572_statement_end_β:
                                                                                        jmp   n517_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n573_statement_begin_α:
                                                                                        jmp   n574_var_α
n573_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n574_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1040], rax                    # result
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n575_field_var_α
n574_var_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n575_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx1055_0]               # fname
                        mov              rsi, qword ptr [rsp + 1040]                    # obj
                        mov              rdx, qword ptr [rsp + 1048]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n515_lit_string_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                                                                                        jmp   n576_assign_α
n575_field_var_β:
                                                                                        jmp   n515_lit_string_α
.Lx1055_0:
                        .quad            .Lx1055_0_s
.Lx1055_0_s:
                        .string          "sval"
#-----------------------------------------------------------------------------------------------------------------------
n576_assign_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [1879052384], rax                    # stack_top
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n577_statement_end_α
n576_assign_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n577_statement_end_α:
                                                                                        jmp   n515_lit_string_α
n577_statement_end_β:
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n578_goto_α:
                                                                                        jmp   n341_statement_begin_α
n578_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n579_goto_α:
                                                                                        jmp   n580_statement_begin_α
n579_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n580_statement_begin_α:
                                                                                        jmp   n581_lit_integer_α
n580_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_integer_α:
                        mov              qword ptr [rsp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1063_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n582_assign_α
n581_lit_integer_β:
                                                                                        jmp   n584_statement_begin_α
.Lx1063_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n582_assign_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n583_statement_end_α
n582_assign_β:
                                                                                        jmp   n584_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_end_α:
                                                                                        jmp   n584_statement_begin_α
n583_statement_end_β:
                                                                                        jmp   n584_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_begin_α:
                                                                                        jmp   n585_var_α
n584_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:
                        mov              rax, qword ptr [1879052432]                    # stk
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 1088], rax                    # result
                        mov              qword ptr [rsp + 1096], rdx
                                                                                        jmp   n586_assign_α
n585_var_β:
                                                                                        jmp   n588_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n586_assign_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n587_statement_end_α
n586_assign_β:
                                                                                        jmp   n588_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n587_statement_end_α:
                                                                                        jmp   n588_statement_begin_α
n587_statement_end_β:
                                                                                        jmp   n588_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n588_statement_begin_α:
                                                                                        jmp   n589_var_α
n588_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n589_var_α:
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 1152], rax                    # result
                        mov              qword ptr [rsp + 1160], rdx
                                                                                        jmp   n590_call_α
n589_var_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n590_call_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn1077:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1077]                        # fn
                        lea              rsi, [rsp + 1120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n501_save_restore_α
                                                                                        jmp   n591_statement_end_α
n590_call_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n591_statement_end_α:
                                                                                        jmp   n592_statement_begin_α
n591_statement_end_β:
                                                                                        jmp   n501_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_begin_α:
                                                                                        jmp   n593_var_α
n592_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n593_var_α:
                        mov              rax, qword ptr [1879052400]                    # stack_depth
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 1184], rax                    # result
                        mov              qword ptr [rsp + 1192], rdx
                                                                                        jmp   n594_lit_integer_α
n593_var_β:
                                                                                        jmp   n598_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_integer_α:
                        mov              qword ptr [rsp + 1200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1083_0]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n595_binop_α
n594_lit_integer_β:
                                                                                        jmp   n598_statement_begin_α
.Lx1083_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n595_binop_α:
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 3
                                                                                        jne   .Lx1084_0
                        mov              rax, qword ptr [rsp + 1192]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1168], 3
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n596_assign_α
.Lx1084_0:
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1084_240
                        add              rsp, 32
                                                                                        jmp   n598_statement_begin_α
.Lx1084_240:
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                                                                                        jmp   n596_assign_α
n595_binop_β:
                        add              rsp, 32
                                                                                        jmp   n598_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n596_assign_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [1879052400], rax                    # stack_depth
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n597_statement_end_α
n596_assign_β:
                                                                                        jmp   n598_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_end_α:
                                                                                        jmp   n598_statement_begin_α
n597_statement_end_β:
                                                                                        jmp   n598_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n598_statement_begin_α:
                                                                                        jmp   n599_var_α
n598_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n599_var_α:
                        mov              rax, qword ptr [1879052416]                    # sd
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 1264], rax                    # result
                        mov              qword ptr [rsp + 1272], rdx
                                                                                        jmp   n600_call_α
n599_var_β:
                                                                                        jmp   n588_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n600_call_α:
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn1092:             .string          "snext"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1092]                        # fn
                        lea              rsi, [rsp + 1232]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    n588_statement_begin_α
                                                                                        jmp   n601_assign_α
n600_call_β:
                                                                                        jmp   n588_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n601_assign_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [1879052416], rax                    # sd
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n602_statement_end_α
n601_assign_β:
                                                                                        jmp   n588_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n602_statement_end_α:
                                                                                        jmp   n588_statement_begin_α
n602_statement_end_β:
                                                                                        jmp   n588_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n603_goto_α:
                                                                                        jmp   n588_statement_begin_α
n603_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n604_goto_α:
                                                                                        jmp   n345_statement_begin_α
n604_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n605_goto_α:
                                                                                        jmp   n400_statement_begin_α
n605_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n606_goto_α:
                                                                                        jmp   n408_statement_begin_α
n606_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_goto_α:
                                                                                        jmp   n492_statement_begin_α
n607_goto_β:
                                                                                        jmp   main_ω
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
                        .section         .rodata
.S0:                    .string          "w2"
.S1:                    .string          "w1"
                        .text
                        .section         .note.GNU-stack,"",@progbits
