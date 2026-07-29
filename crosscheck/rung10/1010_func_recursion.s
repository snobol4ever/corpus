                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__fact_α
proc_LBL__fact_α:
                        .global          proc_LBL__fact_α
                        .global          proc_LBL__fact_β
                        .global          proc_LBL__fact_γ
                        .global          proc_LBL__fact_ω
                        sub              rsp, 1152
                        mov              [rsp + 1128], rcx
                        mov              [rsp + 1136], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__fact_ω
#=======================================================================================================================
# fact    fact = EQ(n, 1) 1                              :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n4_op75_α
.Lx19_0:
                        .quad            1
#=======================================================================================================================
#         fact = n * fact(n - 1)                         :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op75_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 7
                                                                                        je    .Lx22_1
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n7_op75_α
.Lx22_0:
                        lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n7_op75_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx27_1
                        cmp              eax, 6
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx27_0
.Lx27_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n9_op77_α
.Lx27_0:
                        lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n10_binop_α
.Lx28_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_op77_α:
                        lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 64]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n3_var_α
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx31_0
                        mov              rax, qword ptr [rsp + 248]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 224], 6
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n12_call_α
.Lx31_0:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n6_op14_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n12_call_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n13_binop_α
.Lx32_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx34_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx34_21
.Lx34_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_arg_stage@PLT
.Lx34_21:
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx34_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4]
                                                                                        jmp   rax
.Lx34_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_1:
                        call             rt_faildescr@PLT
.Lx34_2:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n6_op14_α
                                                                                        jmp   n14_binop_α
n12_call_β:
                                                                                        jmp   n6_op14_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx36_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx36_0
                        mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 184]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 144], 6
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n16_assign_α
.Lx36_0:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n6_op14_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n6_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_β:
                                                                                        jmp   proc_LBL__fact_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1128]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_ω:
                        mov              rax, [rsp + 1136]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__fact2_entry_α
proc_LBL__fact2_entry_α:
                        .global          proc_LBL__fact2_entry_α
                        .global          proc_LBL__fact2_entry_β
                        .global          proc_LBL__fact2_entry_γ
                        .global          proc_LBL__fact2_entry_ω
                        sub              rsp, 1152
                        mov              [rsp + 1128], rcx
                        mov              [rsp + 1136], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__fact2_entry_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n40_var_α
n39_goto_β:
                                                                                        jmp   proc_LBL__fact2_entry_ω
#=======================================================================================================================
#         fact2 = EQ(n, 1) 1                             :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rsp + 800], 6
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n43_op75_α
.Lx58_0:
                        .quad            1
#=======================================================================================================================
#         fact2 = n * fact2(n - 1)                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op75_α:
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 7
                                                                                        je    .Lx61_1
                        cmp              eax, 6
                                                                                        jne   .Lx61_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx61_0
.Lx61_1:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n46_op75_α
.Lx61_0:
                        lea              rdi, [rsp + 816]
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 784]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n46_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n46_op75_α:
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 7
                                                                                        je    .Lx66_1
                        cmp              eax, 6
                                                                                        jne   .Lx66_0
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx66_0
.Lx66_1:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n48_op77_α
.Lx66_0:
                        lea              rdi, [rsp + 800]
                        lea              rsi, [rsp + 816]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n48_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 960], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n49_binop_α
.Lx67_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n48_op77_α:
                        lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 768]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n42_var_α
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 6
                                                                                        jne   .Lx70_0
                        mov              rax, qword ptr [rsp + 952]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 928], 6
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n51_call_α
.Lx70_0:
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n45_op14_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n51_call_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rsp + 832], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n52_binop_α
.Lx71_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_20
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx73_21
.Lx73_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        call             rt_arg_stage@PLT
.Lx73_21:
                        mov              rdi, qword ptr [rip + .Lx73_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx73_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4]
                                                                                        jmp   rax
.Lx73_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx73_2
.Lx73_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx73_2
.Lx73_1:
                        call             rt_faildescr@PLT
.Lx73_2:
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n45_op14_α
                                                                                        jmp   n53_binop_α
n51_call_β:
                                                                                        jmp   n45_op14_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "fact2"
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n54_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
                        mov              rax, qword ptr [rsp + 872]
                        mov              rcx, qword ptr [rsp + 888]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 848], 6
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n55_assign_α
.Lx75_0:
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n45_op14_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n45_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n45_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_β:
                                                                                        jmp   proc_LBL__fact2_entry_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1128]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_ω:
                        mov              rax, [rsp + 1136]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fact_α
proc_fact_α:
                        .global          proc_fact_α
                        .global          proc_fact_β
                        .global          proc_fact_γ
                        .global          proc_fact_ω
                        sub              rsp, 1152
                        mov              [rsp + 1128], rcx
                        mov              [rsp + 1136], rdx
                        mov              rdi, rsp
                        mov              ecx, 1120
                        xor              eax, eax
                        rep stosb
proc_fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n78_op14_α:
                        mov              rdi, qword ptr [rsp + 1128]
                        mov              rsi, qword ptr [rsp + 1136]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n79_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n79_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx83_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx83_1
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "fact"
.Lx83_1:
                                                                                        jmp   proc_fact_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_β:
                                                                                        jmp   proc_fact_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1128]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_ω:
                        mov              rax, [rsp + 1136]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_facto_α
proc_facto_α:
                        .global          proc_facto_α
                        .global          proc_facto_β
                        .global          proc_facto_γ
                        .global          proc_facto_ω
                        sub              rsp, 1152
                        mov              [rsp + 1128], rcx
                        mov              [rsp + 1136], rdx
                        mov              rdi, rsp
                        mov              ecx, 1120
                        xor              eax, eax
                        rep stosb
proc_facto_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n84_op14_α:
                        mov              rdi, qword ptr [rsp + 1128]
                        mov              rsi, qword ptr [rsp + 1136]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n85_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n85_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx89_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx89_1
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "fact"
.Lx89_1:
                                                                                        jmp   proc_facto_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_β:
                                                                                        jmp   proc_facto_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1128]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_ω:
                        mov              rax, [rsp + 1136]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fact2_α
proc_fact2_α:
                        .global          proc_fact2_α
                        .global          proc_fact2_β
                        .global          proc_fact2_γ
                        .global          proc_fact2_ω
                        sub              rsp, 1152
                        mov              [rsp + 1128], rcx
                        mov              [rsp + 1136], rdx
                        mov              rdi, rsp
                        mov              ecx, 1120
                        xor              eax, eax
                        rep stosb
proc_fact2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n90_op14_α:
                        mov              rdi, qword ptr [rsp + 1128]
                        mov              rsi, qword ptr [rsp + 1136]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n91_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx95_1
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "fact2_entry"
.Lx95_1:
                                                                                        jmp   proc_fact2_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_β:
                                                                                        jmp   proc_fact2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1128]
                        add              rsp, 1152
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_ω:
                        mov              rax, [rsp + 1136]
                        add              rsp, 1152
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__fact"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__fact_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1120
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__fact2_entry"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__fact2_entry_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1120
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fact"
.Lstartup_pp2_0:        .string          "n"
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
                        lea              rsi, [rip + proc_fact_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "facto"
.Lstartup_pp3_0:        .string          "n"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        .section         .rodata
.Lstartup_prn3:         .string          "fact"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_prn3]
                        call             rt_proc_set_result_name@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_facto_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "fact2"
.Lstartup_pp4_0:        .string          "n"
                        .align           8
.Lstartup_pnames4:
                        .quad            .Lstartup_pp4_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_pnames4]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_fact2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "fact"
.Lgvan1:                .string          "n"
.Lgvan2:                .string          "fact2"
.Lgvan3:                .string          "facto"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
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
                        sub              rsp, 1128
                        mov              rdi, rsp
                        mov              ecx, 1128
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#         DEFINE('fact(n)')                              :(fact_end)
#         NE(fact(5), 120)           :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rsp + 368], 6
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n105_call_α
.Lx168_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:
                                                                                        jmp   n106_var_α
n97_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_goto_α:
                                                                                        jmp   n96_lit_integer_α
n98_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:
                                                                                        jmp   n107_lit_string_α
n99_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                                                                                        jmp   n108_lit_integer_α
n100_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:
                                                                                        jmp   n109_lit_integer_α
n101_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:
                                                                                        jmp   n110_var_α
n102_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n103_goto_α:
                                                                                        jmp   n109_lit_integer_α
n103_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n104_goto_α:
                                                                                        jmp   n111_lit_string_α
n104_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_20
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx178_21
.Lx178_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        call             rt_arg_stage@PLT
.Lx178_21:
                        mov              rdi, qword ptr [rip + .Lx178_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx178_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx178_3]
                        lea              rdx, [rip + .Lx178_4]
                                                                                        jmp   rax
.Lx178_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx178_2
.Lx178_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx178_2
.Lx178_1:
                        call             rt_faildescr@PLT
.Lx178_2:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n107_lit_string_α
                                                                                        jmp   n112_lit_integer_α
n105_call_β:
                                                                                        jmp   n107_lit_string_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "fact"
#=======================================================================================================================
# fact    fact = EQ(n, 1) 1                              :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n113_lit_integer_α
#=======================================================================================================================
#         DIFFER(OPSYN(.facto, 'fact'))                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rsp + 560], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n115_call_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "facto"
#=======================================================================================================================
#         NE(facto(4), 24)           :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rsp + 704], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n116_call_α
.Lx181_0:
                        .quad            4
#=======================================================================================================================
#         DEFINE('fact2(n)', .fact2_entry)               :(fact2_end)
#         NE(fact2(6), 720)          :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:
                        mov              qword ptr [rsp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n117_call_α
.Lx182_0:
                        .quad            6
#=======================================================================================================================
#         fact2 = EQ(n, 1) 1                             :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n118_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'PASS 1010_func_recursion (4/4)'
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n120_assign_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "PASS 1010_func_recursion (4/4)"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rsp + 304], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n121_op75_α
.Lx185_0:
                        .quad            120
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n122_op75_α
.Lx186_0:
                        .quad            1
#=======================================================================================================================
#         fact = n * fact(n - 1)                         :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn189:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n108_lit_integer_α
                                                                                        jmp   n125_lit_string_α
n115_call_β:
                                                                                        jmp   n108_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_20
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx191_21
.Lx191_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        call             rt_arg_stage@PLT
.Lx191_21:
                        mov              rdi, qword ptr [rip + .Lx191_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx191_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx191_3]
                        lea              rdx, [rip + .Lx191_4]
                                                                                        jmp   rax
.Lx191_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_1:
                        call             rt_faildescr@PLT
.Lx191_2:
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n109_lit_integer_α
                                                                                        jmp   n126_lit_integer_α
n116_call_β:
                                                                                        jmp   n109_lit_integer_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "facto"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx193_20
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx193_21
.Lx193_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        call             rt_arg_stage@PLT
.Lx193_21:
                        mov              rdi, qword ptr [rip + .Lx193_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx193_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx193_3]
                        lea              rdx, [rip + .Lx193_4]
                                                                                        jmp   rax
.Lx193_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx193_2
.Lx193_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx193_2
.Lx193_1:
                        call             rt_faildescr@PLT
.Lx193_2:
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n111_lit_string_α
                                                                                        jmp   n127_lit_integer_α
n117_call_β:
                                                                                        jmp   n111_lit_string_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "fact2"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rsp + 800], 6
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n128_op75_α
.Lx194_0:
                        .quad            1
#=======================================================================================================================
#         fact2 = n * fact2(n - 1)                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx196_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n121_op75_α:
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 7
                                                                                        je    .Lx198_1
                        cmp              eax, 6
                                                                                        jne   .Lx198_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx198_0
.Lx198_1:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n130_op75_α
.Lx198_0:
                        lea              rdi, [rsp + 320]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n130_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n122_op75_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 7
                                                                                        je    .Lx200_1
                        cmp              eax, 6
                                                                                        jne   .Lx200_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx200_0
.Lx200_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n131_op75_α
.Lx200_0:
                        lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n131_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rsp + 576], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n133_call_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rsp + 640], 6
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n134_op75_α
.Lx205_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rsp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n135_op75_α
.Lx206_0:
                        .quad            720
#-----------------------------------------------------------------------------------------------------------------------
n128_op75_α:
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 7
                                                                                        je    .Lx208_1
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
.Lx208_1:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n136_op75_α
.Lx208_0:
                        lea              rdi, [rsp + 816]
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 784]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n136_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n130_op75_α:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx211_1
                        cmp              eax, 6
                                                                                        jne   .Lx211_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx211_0
.Lx211_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n138_op77_α
.Lx211_0:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n138_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n131_op75_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx213_1
                        cmp              eax, 6
                                                                                        jne   .Lx213_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx213_0
.Lx213_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n139_op77_α
.Lx213_0:
                        lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n139_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:
                        mov              qword ptr [rsp + 256], 6
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n140_binop_α
.Lx214_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn216:              .string          "OPSYN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 464]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n108_lit_integer_α
                                                                                        jmp   n141_call_α
n133_call_β:
                                                                                        jmp   n108_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n134_op75_α:
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 7
                                                                                        je    .Lx218_1
                        cmp              eax, 6
                                                                                        jne   .Lx218_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx218_0
.Lx218_1:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n142_op75_α
.Lx218_0:
                        lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 624]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n142_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op75_α:
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 7
                                                                                        je    .Lx220_1
                        cmp              eax, 6
                                                                                        jne   .Lx220_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx220_0
.Lx220_1:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                                                                                        jmp   n143_op75_α
.Lx220_0:
                        lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 1008]
                        lea              rdx, [rsp + 992]
                        mov              rcx, 149
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n143_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n136_op75_α:
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 7
                                                                                        je    .Lx222_1
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
.Lx222_1:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n144_op77_α
.Lx222_0:
                        lea              rdi, [rsp + 800]
                        lea              rsi, [rsp + 816]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n144_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rsp + 960], 6
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n145_binop_α
.Lx223_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n138_op77_α:
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 272]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n107_lit_string_α
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op77_α:
                        lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 64]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n114_var_α
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                                                                                        jmp   n147_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx228_0
                        mov              rax, qword ptr [rsp + 248]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 224], 6
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n148_call_α
.Lx228_0:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n124_op14_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n148_call_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn230:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n108_lit_integer_α
                                                                                        jmp   n149_lit_string_α
n141_call_β:
                                                                                        jmp   n108_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op75_α:
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 7
                                                                                        je    .Lx232_1
                        cmp              eax, 6
                                                                                        jne   .Lx232_0
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 6
                                                                                        jne   .Lx232_0
.Lx232_1:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n150_op77_α
.Lx232_0:
                        lea              rdi, [rsp + 640]
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 608]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n150_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op75_α:
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 7
                                                                                        je    .Lx234_1
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
.Lx234_1:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n151_op77_α
.Lx234_0:
                        lea              rdi, [rsp + 1008]
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 976]
                        mov              rcx, 150
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n151_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op77_α:
                        lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 768]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n119_var_α
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                                                                                        jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 6
                                                                                        jne   .Lx237_0
                        mov              rax, qword ptr [rsp + 952]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 928], 6
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n153_call_α
.Lx237_0:
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n124_op14_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n153_call_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/001: fact(5)=120'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_assign_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "FAIL 1010/001: fact(5)=120"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n155_binop_α
.Lx239_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx241_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx241_21
.Lx241_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_arg_stage@PLT
.Lx241_21:
                        mov              rdi, qword ptr [rip + .Lx241_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx241_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx241_3]
                        lea              rdx, [rip + .Lx241_4]
                                                                                        jmp   rax
.Lx241_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx241_2
.Lx241_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx241_2
.Lx241_1:
                        call             rt_faildescr@PLT
.Lx241_2:
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n124_op14_α
                                                                                        jmp   n156_binop_α
n148_call_β:
                                                                                        jmp   n124_op14_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "fact"
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/002: opsyn alias'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n157_assign_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "FAIL 1010/002: opsyn alias"
#-----------------------------------------------------------------------------------------------------------------------
n150_op77_α:
                        lea              rdi, [rsp + 624]
                        lea              rsi, [rsp + 608]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n109_lit_integer_α
                                                                                        jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_op77_α:
                        lea              rdi, [rsp + 992]
                        lea              rsi, [rsp + 976]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n111_lit_string_α
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rsp + 832], 6
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n160_binop_α
.Lx247_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_20
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx249_21
.Lx249_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        call             rt_arg_stage@PLT
.Lx249_21:
                        mov              rdi, qword ptr [rip + .Lx249_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx249_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx249_3]
                        lea              rdx, [rip + .Lx249_4]
                                                                                        jmp   rax
.Lx249_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_1:
                        call             rt_faildescr@PLT
.Lx249_2:
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n124_op14_α
                                                                                        jmp   n161_binop_α
n153_call_β:
                                                                                        jmp   n124_op14_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "fact2"
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n162_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx252_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx252_0
                        mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 184]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 144], 6
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n163_assign_α
.Lx252_0:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n124_op14_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n163_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx253_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/003: facto(4)=24 via alias' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n164_assign_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "FAIL 1010/003: facto(4)=24 via alias"
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/004: fact2(6)=720 alt entry' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n165_assign_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "FAIL 1010/004: fact2(6)=720 alt entry"
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n166_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx257_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 6
                                                                                        jne   .Lx257_0
                        mov              rax, qword ptr [rsp + 872]
                        mov              rcx, qword ptr [rsp + 888]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 848], 6
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n167_assign_α
.Lx257_0:
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n124_op14_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n167_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n124_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n124_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx260_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx261_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n124_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n124_op14_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 1128
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 1128
                        ret
                        .section         .note.GNU-stack,"",@progbits
